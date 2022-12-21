//
//  TimerViewController.swift
//  EggTimer
//
//  Created by Aydan Haqverdili on 12/19/22.
//

import Cocoa
import AVFoundation

class TimerViewController: NSViewController {
    //MARK: Timer
    @IBOutlet weak var timeLeftField: NSTextField!
    @IBOutlet weak var eggImageView: NSImageView!
    //MARK: Button
    @IBOutlet weak var resetButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    @IBOutlet weak var startButton: NSButton!

    var eggTimer = EggTimer()
    var preferences = Preferences()
    var soundPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        eggTimer.delegate = self
        setUpPreferences()
    }

    @IBAction func startButtonClicked(_ sender: Any) {
        if eggTimer.isPaused {
            eggTimer.resetTimer()
        } else {
            eggTimer.duration = preferences.selectedTime
            eggTimer.startTimer()
        }

        configureButtonsAndMenus()
        prepareSound()
    }

    @IBAction func stopButtonClicked(_ sender: Any) {
        eggTimer.stopTimer()

        configureButtonsAndMenus()
    }

    @IBAction func resetButtonClicked(_ sender: Any) {
        eggTimer.resetTimer()
        updateDisplay(for: preferences.selectedTime)
        
        configureButtonsAndMenus()
    }

    func updateDisplay(for timeRemaining: TimeInterval) {
        timeLeftField.stringValue = textToDisplay(for: timeRemaining)
        eggImageView.image = imageForDisplay(for: timeRemaining)
    }

    private func textToDisplay(for timeRemaining: TimeInterval) -> String {
        if timeRemaining == 0 {
            return "Done!"
        }

        let minutesRemaining = floor(timeRemaining / 60)
        let secondsRemaining = timeRemaining - (minutesRemaining * 60)

        let secondsDisplay = String(format: "%02d", Int(secondsRemaining))
        let timeRemainingToDisplay = "\(Int(minutesRemaining)):\(secondsDisplay)"

        return timeRemainingToDisplay
    }

    private func imageForDisplay(for timeRemaining: TimeInterval) -> NSImage? {
        let percentageComplete = 100 - (timeRemaining / 360 * 100)

        if eggTimer.isStopped  {
            let stoppedImageName = (timeRemaining == 0)
            ? "100"
            : "stopped"
            return NSImage(named: stoppedImageName)
        }

        let imageName: String
        switch percentageComplete {
        case 0 ..< 25:
            imageName = "0"
        case 25..<50:
            imageName = "25"
        case 50..<75:
            imageName = "50"
        case 75..<100:
            imageName = "75"
        default:
            imageName = "100"
        }

        return NSImage(named: imageName)
    }

    func configureButtonsAndMenus(){
        let enableStart: Bool
        let enableStop: Bool
        let enableReset: Bool

        if eggTimer.isStopped {
            enableStart = true
            enableStop = false
            enableReset = false
        } else if eggTimer.isPaused {
            enableStart = true
            enableStop = false
            enableReset = true
        } else {
            enableStart = false
            enableStop = true
            enableReset = false
        }

        startButton.isEnabled = enableStart
        stopButton.isEnabled = enableStop
        resetButton.isEnabled = enableReset

        if let appDelegate = NSApplication.shared.delegate as? AppDelegate {
            appDelegate.enableMenus(start: enableStart, stop: enableStop, reset: enableReset)
        }
    }

}
//MARK: - Timer
extension TimerViewController: EggTimerProtocol {
    func timeRemainingOnTimer(_ timer: EggTimer, timeRemaining: TimeInterval) {
        updateDisplay(for: timeRemaining)
    }

    func timerHasFinished(_ timer: EggTimer) {
        updateDisplay(for: 0)
        playSound()
    }
}
//MARK: - Preferences
extension TimerViewController {
    func setUpPreferences(){
        updateDisplay(for: preferences.selectedTime)
        let notificationName = Notification.Name(rawValue: "PrefsChanged")
        NotificationCenter.default.addObserver(
            forName: notificationName,
            object: nil,
            queue: nil
        ) { notification in
            self.checkForResetAfterPreferencesChange()
        }
    }

    func updateFromPreferences(){
        self.eggTimer.duration = self.preferences.selectedTime
        self.resetButtonClicked(self)
    }

    func checkForResetAfterPreferencesChange(){
        if eggTimer.isStopped || eggTimer.isPaused {
            updateFromPreferences()
        } else {
            let alert = NSAlert()
            alert.messageText = "Reset timer with the new settings?"
            alert.informativeText = "This will stop your current timer!"
            alert.alertStyle = .warning

            alert.addButton(withTitle: "Yes, Reset!")
            alert.addButton(withTitle: "Cancel")

            let response = alert.runModal()
            if response == NSApplication.ModalResponse.alertFirstButtonReturn {
                self.updateFromPreferences()
            }
        }
    }
}
//MARK: - Sound
extension TimerViewController {
    func prepareSound(){
        guard let audioFileURL = Bundle.main.url(
            forResource: "ding",
            withExtension: "mp3"
        ) else { return }

        do {
            soundPlayer = try AVAudioPlayer(contentsOf: audioFileURL)
            soundPlayer?.prepareToPlay()
        } catch {
            print("Sound player not available: \(error)")
        }
    }

    func playSound(){
        soundPlayer?.play()
    }
}
