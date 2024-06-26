import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    let dataSource: IWeatherDataSource
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack() {
                CityNameView(cityName: "Bangkok, Ladprao")
                
                MainWeatherStatusView(imagePath: isNight ? "moon.stars.fill" : "cloud.sun.rain.fill", temperature: 46)
                
                HStack(spacing: 25) {
                    ForEach(dataSource.getWeatherData(), id: \.self) { model in
                        WeatherTemp(model: model)
                    }
                }
                
                Spacer()
                
                ChangeDayTimeButtonView(title: "Change Day Time") {
                    isNight.toggle()
                }
                
                Spacer()
            }
        }
    }
}

struct WeatherTemp: View {
    
    let model: WeatherModel
    
    var body: some View {
        VStack {
            Text(model.title)
                .font(.system(size: 22))
                .foregroundColor(.white)
            Image(systemName: model.imagePath)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            Text("\(model.temp)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .g1, isNight ? .gray : .white], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct CityNameView: View {
    
    let cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 29, weight: .medium))
            .foregroundColor(.white)
            .padding(.top)
    }
}

struct MainWeatherStatusView: View {
    
    let imagePath: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: imagePath)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 100)
            
            Text("\(temperature)")
                .font(.system(size: 90, weight: .bold))
                .foregroundStyle(.white, .ultraThickMaterial)
        }
        .padding(.bottom, 50)
    }
}

struct ChangeDayTimeButtonView: View {
    
    let title: String
    let cb: () -> Void

    
    var body: some View {
        Button {
            cb()
        } label: {
            WeatherButton(title: "Change Day Time")
        }
    }
}

#Preview {
    ContentView(dataSource: WeatherDataSource())
}
