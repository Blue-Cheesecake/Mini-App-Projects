//
//  ContentView.swift
//  NoobSwiftUI
//
//  Created by Cheese Macaron on 25/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack() {
                Text("Hello SwiftUI!")
                    .font(.title)
                    .foregroundColor(.black)
                Label(
                    title: { Text("This is a label") },
                    icon: {
                        Image(systemName: "square.and.arrow.down.on.square.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                    }
                )
            }
            HStack(alignment: .firstTextBaseline) {
                Text("Joshua Tree National Part")
                    .font(.subheadline)
                    .frame(width: 50)
                    .multilineTextAlignment(.center)
                Spacer()
                Text("Califonia")
            }
        }
        .padding()
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
