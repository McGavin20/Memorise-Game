//
//  MainGameView.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

struct MainGameView: View {
    
    
   @ObservedObject var viewModel: EmojiViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Button("Shuffle") {
                viewModel.shuffle()
            }
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
            ForEach(viewModel.cards.indices, id: \.self) { index in
                CardView(viewModel.cards[index])
                    .aspectRatio(2/3, contentMode: .fit)
                    .padding(4)
                    
            }
        }
        .foregroundColor(.blue)
    }
}

#Preview {
    MainGameView(viewModel: EmojiViewModel())
}
