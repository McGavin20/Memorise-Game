//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Sharma on 10/01/2024.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiViewModel()
    var body: some Scene {
        WindowGroup {
            MainGameView(viewModel: game)
        }
    }
}
