//
//  MainGameView.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

struct MainGameView: View {
    
    var viewModel: EmojiViewModel = EmojiViewModel()
    let emojis: [String] = ["🎮", "👨🏽‍💻", "📸", "🍿", "📝", "💰", "🔫", "🎁", "🏳️‍🌈", "🚘", "✈️", "🐻"]
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
                    .foregroundColor(.blue)
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
}

#Preview {
    MainGameView()
}
