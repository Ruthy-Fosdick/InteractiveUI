//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 6/4/25.
//

import SwiftUI

struct ContentView: View {
   @State private var name=""
    @State private var textTitle = "What is your name?"
    
    
    var body: some View {
        VStack {
            Text(textTitle)
                
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font( .title)
                .border(Color.gray,width: 1)
            Button("Submit Name") {
                textTitle = "Welcome \(name)!"
                print(name)
            
            }
           // end button
            .font (.title)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        } //end Vstack
        .padding()
    }
    
}

#Preview {
    ContentView()
}
