//
//  ViewController.swift
//  EggTimer
//
//  Created by Aydan Haqverdili on 12/19/22.
//

import Cocoa

class ViewController: NSViewController {
    //MARK: Timer
    @IBOutlet weak var timeLeftField: NSTextField!
    @IBOutlet weak var eggImageView: NSImageView!
    //MARK: Button
    @IBOutlet weak var resetButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    @IBOutlet weak var startButton: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func startTimerMenuItemSelected(_ sender: Any) {
      startButtonClicked(sender)
    }

    @IBAction func stopTimerMenuItemSelected(_ sender: Any) {
      stopButtonClicked(sender)
    }

    @IBAction func resetTimerMenuItemSelected(_ sender: Any) {
      resetButtonClicked(sender)
    }

    func startButtonClicked(_ sender: Any){}
    func stopButtonClicked(_ sender: Any){}
    func resetButtonClicked(_ sender: Any){}

}

