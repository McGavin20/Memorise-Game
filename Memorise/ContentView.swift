//
//  ContentView.swift
//  Memorise
//
//  Created by Sharma on 19/12/2023.
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
