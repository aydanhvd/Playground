//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Aydan Haqverdili on 10/11/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

   @Published private var model = createMemoryGame()

    static  let emojis = [
        "🚕", "✈️" , "🚀" , "🚗",
        "🛸", "🚔" , "🚍" , "🚎",
        "🛻", "🚙" , "🛰" , "🚁",
        "⛵️", "🛶" , "🚤" , "🚠",
        "🚐", "🚚" , "🚛" , "🚌",
        "🚘", "🛺" , "🚜" , "🛵",
        "🚑", "🚍" , "🚡" , "🚂",
        "🦼", "🛬" , "🦽" , "🚇",
        "🎠", "🛩" , "🏍" , "🚃",
        "🚉", "🏰" , "🗺" , "🗽",
    ]

    static func createMemoryGame () -> MemoryGame<String> {
        MemoryGame<String>( numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }

    var cards: [Card] {
        return model.cards
    }

    //MARK: - Intent(s)

    func choose(_ card: Card) {
        model.choose(card)
    }

}
