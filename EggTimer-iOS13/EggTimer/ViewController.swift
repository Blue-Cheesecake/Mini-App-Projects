//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
	@IBOutlet var progressBar: UIProgressView!
	@IBOutlet var doneLabel: UILabel!
	var player: AVAudioPlayer?
	var eggWaitingTime: [String: Int] = [
		"Soft": 4,
		"Medium": 7,
		"Hard": 10
	]
	var counter: Int = -1
	var one_progress: Float = -1.0

	override func viewDidLoad() {
		super.viewDidLoad()
		doneLabel.alpha = 0.0
	}

	func ringAlarm() {
		guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }
		do {
			player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
			guard let player = player else { return }
			player.play()
		} catch {
			print(error.localizedDescription)
		}
	}

	@IBAction func eggTimerSelected(_ sender: UIButton) {
		// Set to default zero progression
		progressBar.progress = 0
		doneLabel.alpha = 0.0
		let title: String = sender.currentTitle!
		counter = eggWaitingTime[title]!
		one_progress = 1.0 / Float(counter)

		Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { Timer in
			if self.counter > 0 {
				self.counter -= 1
				self.progressBar.progress += self.one_progress
			}
			if self.counter == 0 {
				self.doneLabel.alpha = 1.0
				self.ringAlarm()
				Timer.invalidate()
			}

		})
	}
}
