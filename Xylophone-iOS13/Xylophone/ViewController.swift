//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
	var player: AVAudioPlayer?

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func keyPressed(_ sender: UIButton) {
		sender.alpha = CGFloat(0.5)
		playSound(sender.currentTitle!)
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			sender.alpha = CGFloat(0.8)
		}
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			sender.alpha = CGFloat(1)
		}
	}

	func playSound(_ name: String) {
		guard let path = Bundle.main.path(forResource: name, ofType: "wav") else { return }
		let url = URL(fileURLWithPath: path)

		do {
			// try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
			// try AVAudioSession.sharedInstance().setActive(true)

			player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
			player?.play()

		} catch {
			print(error.localizedDescription)
		}
	}
}
