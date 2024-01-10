//
//  ContentView.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.blue)
        .padding()
    }
}

#Preview {
    ContentView()
}
