//
//  CardView.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp = true
    
    let content: String
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}

