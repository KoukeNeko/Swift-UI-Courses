//
//  ContentView.swift
//  StackViewDemo
//
//  Created by 陳德生 on 2024/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Instant Developer")
                            .fontWeight(.medium)
                            .font(.system(size: 40))
                            .foregroundColor(.indigo)

            Text("Get help from experts in 15 minutes")
            
            HStack(
                alignment: .bottom, spacing: 10
            ) {
                Image("user1")
                    .resizable()
                    .scaledToFit()

                Image("user2")
                    .resizable()
                    .scaledToFit()

                Image("user3")
                    .resizable()
                    .scaledToFit()
            }.padding(.horizontal, 20)
            
            Text("Need help with coding problems? Register!")
            
            Spacer()
            
            VSignUpButtonGroup()
            
        }
        .padding(.top, 38)
    }
}

#Preview {
    ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 15 Pro"))
                .previewDisplayName("iPhone 15 Pro")
}

struct VSignUpButtonGroup: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    
    var body: some View {
        if verticalSizeClass == .compact {
            HStack {
                Button {
                    
                } label: {
                    Text("Sign Up")
                }
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(Color.indigo)
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Log In")
                }
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            }
        }else{
            VStack {
                Button {
                    
                } label: {
                    Text("Sign Up")
                }
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(Color.indigo)
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Log In")
                }
                .frame(width: 200)
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            }
        }
    }
}
