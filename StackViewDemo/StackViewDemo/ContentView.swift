//
//  ContentView.swift
//  StackViewDemo
//
//  Created by 陳德生 on 2024/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Instant Developer")
                            .fontWeight(.medium)
                            .font(.system(size: 40))
                            .foregroundColor(.indigo)

            Text("Get help from experts in 15 minutes")
            
            Image("user1")
                .resizable()
//                .scaledToFit()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
        }
        .padding(.top, 38)
    }
}

#Preview {
    ContentView()
}
