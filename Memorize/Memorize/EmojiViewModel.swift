//
//  EmojiViewModel.swift
//  Memorize
//
//  Created by Sharma on 17/01/2024.
//

import SwiftUI


class EmojiViewModel {
    private static let emojis = ["🎮", "👨🏽‍💻", "📸", "🍿", "📝", "💰", "🔫", "🎁", "🏳️‍🌈", "🚘", "✈️", "🐻"]
    
    private static func createMemoryGame() -> MemorizeModel<String> {
        return MemorizeModel(numberOfPairsOfCards: 4) {
            if emojis.indices.contains($0) {
                return emojis[$0]
            } else {
                return "⛔️"
            }
        }
    }
    
    private var model = createMemoryGame()
    
    var cards: Array<MemorizeModel<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemorizeModel<String>.Card) {
        model.choose(card)
    }
}
