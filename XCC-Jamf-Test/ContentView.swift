//
//  ContentView.swift
//  XCC-Jamf-Test
//
//  Created by Camden Webster on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = "Hello World!"
    var body: some View {
        VStack {
            Text(text)
                .accessibilityIdentifier("text")
            Button(action: changeText, label: { Text("Click me!") })
                .accessibilityIdentifier("button")
        }
        .padding()
        .frame(minWidth: 200)
    }

    
    func changeText() {
        text = "Button was clicked."
    }
}



#Preview {
    ContentView()
}
