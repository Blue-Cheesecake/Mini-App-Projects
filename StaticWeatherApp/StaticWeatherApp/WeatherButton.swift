import Foundation
import SwiftUI

struct WeatherButton: View {
    
    let title: String
    let frameWidth: CGFloat
    let frameHeight: CGFloat
    
    init(title: String, frameWidth: CGFloat = 200, frameHeight: CGFloat = 50) {
        self.title = title
        self.frameWidth = frameWidth
        self.frameHeight = frameHeight
    }
    
    var body: some View {
        Text(title)
            .frame(width: frameWidth, height: frameHeight)
            .font(.system(size: 20, weight: .medium, design: .default))
            .foregroundColor(.g1)
            .background(.white)
            .cornerRadius(10)
    }
}
