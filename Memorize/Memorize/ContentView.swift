//
//  ContentView.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let emojis: [String] = ["🎮", "👨🏽‍💻", "📸", "🍿"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.blue)
        .padding()
    }
}

#Preview {
    ContentView()
}
