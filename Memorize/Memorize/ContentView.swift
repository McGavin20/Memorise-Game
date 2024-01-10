//
//  ContentView.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let emojis: [String] = ["🎮", "👨🏽‍💻", "📸", "🍿", "📝", "💰", "🔫", "🎁", "🏳️‍🌈", "🚘", "✈️", "🐻"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            
            HStack {
                cardCounterAdjuster(by: +1, symbol: "plus.circle")
                
                Spacer()
                
                cardCounterAdjuster(by: -1, symbol: "trash")
            }
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
                    .foregroundColor(.blue)
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
    
    func cardCounterAdjuster(by offset: Int, symbol: String) -> some View {
        
        Button(action: {
            cardCount += offset
        }, label: {
            HStack {
                Image(systemName: symbol);
            }
        })
        .imageScale(.large)
        .font(.largeTitle)
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
}

#Preview {
    ContentView()
}
