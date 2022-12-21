//
//  PrefsViewController.swift
//  EggTimer
//
//  Created by Aydan Haqverdili on 12/19/22.
//

import Cocoa

class PrefsViewController: NSViewController {

    @IBOutlet weak var presetsPopup: NSPopUpButton!
    @IBOutlet weak var customSlider: NSSlider!
    @IBOutlet weak var customTextField: NSTextField!

    var preferences = Preferences()

    override func viewDidLoad() {
        super.viewDidLoad()
        showExistingPreferences()
    }


    @IBAction func popupValueChanged(_ sender: NSPopUpButton) {
        if sender.selectedItem?.title == "Custom" {
            customSlider.isEnabled = true
            return
        }

        let newTimerDuration = sender.selectedTag()
        customSlider.integerValue = newTimerDuration
        showSliderValueAsText()
        customSlider.isEnabled = false
    }

    @IBAction func sliderValueChanged(_ sender: NSSlider) {
        showSliderValueAsText()
    }

    @IBAction func okButtonClicked(_ sender: Any) {
        saveNewPreferences()
        view.window?.close()
    }

    @IBAction func cancelButtonClicked(_ sender: Any) {
        view.window?.close()
    }

    func showExistingPreferences(){
        let selectedTimeInMinutes = Int(preferences.selectedTime) / 60

        presetsPopup.selectItem(withTitle: "Custom")
        customSlider.isEnabled = true

        for item in presetsPopup.itemArray {
            if item.tag == selectedTimeInMinutes {
                customSlider.isEnabled = false
                break
            }
        }

        customSlider.integerValue = selectedTimeInMinutes
        showSliderValueAsText()
    }

    func showSliderValueAsText(){
        let newTimerDuration = customSlider.integerValue
        let minutesDescription = (newTimerDuration == 1) ? "minute" : "minutes"

        customTextField.stringValue = "\(newTimerDuration) \(minutesDescription)"
    }

    func saveNewPreferences(){
        preferences.selectedTime = customSlider.doubleValue * 60

        NotificationCenter.default.post(
            name: Notification.Name(rawValue: "PrefsChanged"),
            object: nil
        )
    }
}
