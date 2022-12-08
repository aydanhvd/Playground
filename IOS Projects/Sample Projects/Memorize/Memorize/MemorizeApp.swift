//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Aydan Haqverdili on 10/9/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
     
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
