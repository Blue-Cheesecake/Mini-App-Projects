import Foundation
import SwiftUI

struct CircleImageView: View {
    var body: some View {
        VStack {
            Image(.turtlerock)
                .clipShape(.circle)
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
            
            Text("Hello World")
                .padding(.top, 5)
                .frame(width: 100)
        }
        
    }
}

#Preview {
        CircleImageView()
}
