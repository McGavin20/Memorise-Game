//
//  EmojiViewModel.swift
//  Memorize
//
//  Created by Sharma on 17/01/2024.
//

import SwiftUI


class EmojiViewModel: ObservableObject {
    private static let emojis = ["🎮", "👨🏽‍💻", "📸", "🍿", "📝", "💰", "🔫", "🎁", "🏳️‍🌈", "🚘", "✈️", "🐻"]
    
    private static func createMemoryGame() -> MemorizeModel<String> {
        return MemorizeModel(numberOfPairsOfCards: 6) {
            if emojis.indices.contains($0) {
                return emojis[$0]
            } else {
                return "⛔️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemorizeModel<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
        
    }
    
    func choose(_ card: MemorizeModel<String>.Card) {
        model.choose(card)
    }
}
