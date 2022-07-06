//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cheese & Cupcake on 1/7/2565 BE.
//  Copyright © 2565 BE Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
	
	public static func getBMIValue(h height: Float, w weight: Float) -> Float {
		return weight / powf(height, 2)
	}
	
	public static func getBMIFormat(_ bmi: Float) -> String {
		return String(format: "%.1f", bmi)
	}
	
	public static func getAdviceBasedOn(_ bmiValue: Float) -> String {
		if bmiValue < 18.5 {
			return "Eat more snacks"
		} else if bmiValue < 24.9 {
			return "You are in shape"
		}
		return "Tryo to lose weight"
	}
	
	public static func getColorBasedOn(_ bmiValue: Float) -> UIColor {
		if bmiValue < 18.5 {
			return UIColor.blue
		} else if bmiValue < 24.9 {
			return UIColor.yellow
		}
		return UIColor.red
	}
	
	public static func getHeightFormat(_ height: Float) -> String {
		return String(format: "%.2f", height) + "m"
	}
	
	public static func getWeightFormat(_ weight: Float) -> String {
		return String(format: "%.0f", weight) + "Kg"
	}
	
}
