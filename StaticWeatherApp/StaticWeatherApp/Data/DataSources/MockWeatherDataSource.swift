import Foundation

protocol IWeatherDataSource {
    func getWeatherData() -> [WeatherModel]
}

class WeatherDataSource: IWeatherDataSource {
    func getWeatherData() -> [WeatherModel] {
        [
            WeatherModel(title: "TUE", temp: 23, imagePath: "cloud.sun.rain.fill"),
            WeatherModel(title: "WED", temp: 18, imagePath: "cloud.sun.bolt.fill"),
            WeatherModel(title: "THU", temp: 45, imagePath: "cloud.heavyrain.fill"),
            WeatherModel(title: "FRI", temp: 32, imagePath: "cloud.rainbow.half.fill"),
            WeatherModel(title: "SAT", temp: 12, imagePath: "cloud.bolt.fill"),
        ]
    }
}
