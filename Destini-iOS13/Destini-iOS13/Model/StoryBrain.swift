//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
	
	/**
	 The `array` that contains `Story` the destination of each choice will be `dest - 1` index in array
	 */
	private let storyArray: [Story] = [
		Story(
			title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
			choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
			choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
		),
		Story(
			title: "He nods slowly, unfazed by the question.",
			choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
			choice2: "Wait, I know how to change a tire.", choice2Destination: 3
		),
		Story(
			title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
			choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
			choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
		),
		Story(
			title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
			choice1: "The", choice1Destination: 0,
			choice2: "End", choice2Destination: 0
		),
		Story(
			title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
			choice1: "The", choice1Destination: 0,
			choice2: "End", choice2Destination: 0
		),
		Story(
			title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
			choice1: "The", choice1Destination: 0,
			choice2: "End", choice2Destination: 0
		)
	]
	
	private var curr_index: Int
	private var curr_story: Story
	
	init() {
		self.curr_index = 0
		self.curr_story = self.storyArray[self.curr_index]
	}
	
	/**
	 Assume that user will insert valid index
	 */
	public mutating func changeIndex(to newIndex: Int) {
		self.curr_index = newIndex
	}
	
	public func getCurrTitle() -> String {
		return self.curr_story.title
	}
	
	public func getCurrChoice1Text() -> String {
		return self.curr_story.choice1
	}
	
	public func getCurrChoice2Text() -> String {
		return self.curr_story.choice2
	}
	
	public func isRantOutOfStory() -> Bool {
		return self.curr_index < 0 || self.curr_index >= self.storyArray.count
	}
	
	/**
	 Move to the next story object based in given choice.
	 */
	public mutating func goToNextStory(with_choice selectedChoice: String) {
		if selectedChoice == self.getCurrChoice1Text() {
			self.changeIndex(to: self.curr_story.choice1Destination - 1)
		} else {
			self.changeIndex(to: self.curr_story.choice2Destination - 1)
		}
		self.curr_story = self.storyArray[self.curr_index]
	}
	
	
}


