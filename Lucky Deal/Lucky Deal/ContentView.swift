//
//  ContentView.swift
//  Lucky Deal
//
//  Created by Cheese & Cupcake on 20/7/2565 BE.
//

import SwiftUI

struct ContentView: View {
	
	// Fix random element
	@State var playerCardImageName = "card2"
	@State var cpuCardImageName = "card3"
	@State var playerScore = 0
	@State var cpuScore = 0
	@State var status: Text?
	@State var counter = 0
	private let MAX_ROUND: Int = 5
	
	private func showStatusBy(text: String) -> Text {
		return Text(text)
			.font(.custom("Largest", size: 50))
			.foregroundColor(Color.red)
	}
	
	var body: some View {
		
		ZStack {
			
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)
			
			VStack {
					// Logo
				Spacer()
				Image("Logo")
				Spacer()
				
					// Two Cards Images
				HStack {
					Spacer()
						// Player Card
					Image(playerCardImageName)
					Spacer()
						// CPU Card
					Image(cpuCardImageName)
					Spacer()
				}
				Spacer()
				
					// Deal button
					//				Image("dealbutton")
				Button(action: {
					
					let randomizedPlayer = Int.random(in: 2...14)
					let randomizedCPU = Int.random(in: 2...14)
					
					playerCardImageName = "card" + String(randomizedPlayer)
					cpuCardImageName = "card" + String(randomizedCPU)
					
					if randomizedPlayer > randomizedCPU {
						playerScore += 1
					} else if randomizedPlayer < randomizedCPU {
						cpuScore += 1
					}
					counter += 1
					
					if counter == MAX_ROUND {
						if playerScore > cpuScore {
							status = showStatusBy(text: "Win!")
						} else if playerScore < cpuScore {
							status = showStatusBy(text: "Lose!")
						} else {
							status = showStatusBy(text: "Draw!")
						}
						
						
						Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: {
							timer in
							
								// Reset
							status = nil
							counter = 0
							playerScore = 0
							cpuScore = 0
							
						})
					}
										
				}, label: {
					Image("dealbutton")
				})
				
				Spacer()
				
					// Scores Display
				HStack {
					Spacer()
					VStack {
						Text("Player")
							.font(.title)
							.fontWeight(.medium)
							.foregroundColor(Color.white)
							.padding(.bottom, 10)
						Text(String(playerScore))
							.font(.title2)
							.fontWeight(.medium)
							.foregroundColor(Color.white)
					}
					Spacer()
					VStack {
						Text("CPU")
							.font(.title)
							.fontWeight(.medium)
							.foregroundColor(Color .white)
							.padding(.bottom, 10)
						Text(String(cpuScore))
							.font(.title2)
							.fontWeight(.medium)
							.foregroundColor(Color.white)
					}
					Spacer()
				}
				Spacer()
			}
			
			status
			
		}
		
		
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.previewInterfaceOrientation(.portrait)
		
		
	}
}
