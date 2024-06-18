//
//  ContentView.swift
//  HelloWorld
//
//  Created by 陳德生 on 2024/6/18.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
            VStack {
                Button{
                    let uttrance = AVSpeechUtterance(string: "Hello World")
                    uttrance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")
                    synthesizer.speak(uttrance)
                } label: {
                    Text("This is a button")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }.padding()
                    .foregroundStyle(.white)
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button{
                    let uttrance = AVSpeechUtterance(string: "Hello Programming")
                    uttrance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")
                    synthesizer.speak(uttrance)
                } label: {
                    Text("Hello Programming")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }.padding()
                    .foregroundStyle(.white)
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
