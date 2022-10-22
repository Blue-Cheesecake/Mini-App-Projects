//
//  ContentView.swift
//  Tips-Calculator-iOS16
//
//  Created by Cheese Cake on 22/10/2565 BE.
//

import SwiftUI

struct ContentView: View {
	let tips = [10, 15, 20, 25, 0]
	@State private var amount: Double = 0.0
	@State private var people: Int = 2
	@State private var tip: Int = 20
	@FocusState private var isAmountFocused: Bool

	var result: Double {
		let p = Double(people)
		let t = Double(tip)
		let each = amount / 100.0 * t
		let sum = amount + each
		return sum / p
	}

	var body: some View {
		NavigationStack {
			Form {
				TextField("Amount", value: $amount, formatter: NumberFormatter())
					.keyboardType(.decimalPad)
					.focused($isAmountFocused)

				Picker("Number of people", selection: $people) {
					ForEach(1 ..< 100, id: \.self) {
						Text("\($0) people")
					}
				}

				Section {
					Picker("", selection: $tip) {
						ForEach(tips, id: \.self) {
							Text("\($0)$")
						}
					}.pickerStyle(.segmented)
				} header: {
					Text("how mouch tip do you want to split")
				}

				Section {
					Text("\(result)")
				} header: {
					Text("Result")
				}
			}

			.navigationTitle("Tips Calculator")
			.toolbar {
				ToolbarItemGroup(placement: .keyboard) {
					Spacer()
					Button("Done") { isAmountFocused = false }
				}
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
