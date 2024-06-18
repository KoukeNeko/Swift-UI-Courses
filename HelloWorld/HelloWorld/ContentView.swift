//
//  ContentView.swift
//  HelloWorld
//
//  Created by 陳德生 on 2024/6/18.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    
    
    func speak(test: String){
        let uttrance = AVSpeechUtterance(string: test)
        uttrance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")
        synthesizer.speak(uttrance)
    }
    
    
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
                    speak(test: "Hello Wold")
                } label: {
                    Text("Hello Wold")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }.padding()
                    .foregroundStyle(.white)
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button{
                    speak(test: "Hello Programming")
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
