//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cheese & Cupcake on 1/7/2565 BE.
//  Copyright © 2565 BE Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
	
	public static func getBMI(h height: Float, w weight: Float) -> Float {
		return weight / powf(height, 2)
	}
	
	public static func getBMIFormat(_ bmi: Float) -> String {
		return String(format: "%.1f", bmi)
	}
	
	public static func getHeightFormat(_ height: Float) -> String {
		return String(format: "%.2f", height) + "m"
	}
	
	public static func getWeightFormat(_ weight: Float) -> String {
		return String(format: "%.0f", weight) + "Kg"
	}
	
}
