//
//  EggTimer.swift
//  EggTimer
//
//  Created by Aydan Haqverdili on 12/21/22.
//

import Foundation

protocol EggTimerProtocol {
    func timeRemainingOnTimer(_ timer: EggTimer, timeRemaining: TimeInterval)
    func timerHasFinished(_ timer: EggTimer)
}

class EggTimer {
    var timer: Timer? = nil
    var startTime: Date?
    var duration: TimeInterval = 360
    var elapsedTime: TimeInterval = 0

    var delegate: EggTimerProtocol?

    var isStopped: Bool {
        return timer == nil && elapsedTime == 0
    }

    var isPaused: Bool {
        return timer == nil && elapsedTime > 0
    }

    func timerAction(){
        guard let startTime = startTime else { return }
        elapsedTime = -startTime.timeIntervalSinceNow
        let secondsRemaining = (duration - elapsedTime).rounded()

        if secondsRemaining <= 0 {
            ()
            delegate?.timerHasFinished(self)
        } else {
            delegate?.timeRemainingOnTimer(self, timeRemaining: secondsRemaining)
        }
    }

    func startTimer(){
        startTime = Date()
        elapsedTime = 0

        timer = Timer.scheduledTimer(
            withTimeInterval: 1,
            repeats: true
        ){ timer in
            self.timerAction()
        }
        timerAction()
    }

    func resumeTimer(){
        startTime = Date(timeIntervalSinceNow: -elapsedTime)
        timer = Timer.scheduledTimer(
            withTimeInterval: 1,
            repeats: true
        ){ timer in
            self.timerAction()
        }
        timerAction()
    }

    func stopTimer(){
        timer?.invalidate()
        timer = nil

        timerAction()
    }

    func resetTimer(){
        timer?.invalidate()
        timer = nil

        startTime = nil
        duration = 360
        elapsedTime = 0

        timerAction()
    }
}
