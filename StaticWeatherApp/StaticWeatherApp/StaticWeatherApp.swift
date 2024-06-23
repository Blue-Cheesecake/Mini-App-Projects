//
//  StaticWeatherAppApp.swift
//  StaticWeatherApp
//
//  Created by Cheese Macaron on 23/6/2567 BE.
//

import SwiftUI

@main
struct StaticWeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(dataSource: WeatherDataSource())
        }
    }
}
