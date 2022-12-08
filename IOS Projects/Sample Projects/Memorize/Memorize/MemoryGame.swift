//
//  MemoryGame.swift
//  Memorize
//
//  Created by Aydan Haqverdili on 10/11/21.
//

import Foundation
import SwiftUI

struct MemoryGame<CardContent> where CardContent: Equatable {

    private(set) var cards: [Card]
    private var indexOfTheOneAndOnlyFacedUpCard: Int? {
        get { cards.indices.filter{ cards[$0].isFaceUp }.oneAndOnly }
        set { cards.indices.forEach{ cards[$0].isFaceUp = ($0 == newValue )} }
    }

    mutating func choose(_ card: Card){
        let chosenIndex = cards.firstIndex(where: { $0.id == card.id })

        guard let chosenIndex = chosenIndex,
              !cards[chosenIndex].isFaceUp,
              !cards[chosenIndex].isMatched else { return }
        if let potentialMatchIndex = indexOfTheOneAndOnlyFacedUpCard {
            if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                cards[potentialMatchIndex].isMatched = true
                cards[chosenIndex].isMatched = true
            }
        } else {
            indexOfTheOneAndOnlyFacedUpCard = chosenIndex
        }

    }


    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched  = false
        let content: CardContent
        let id: Int
    }

    init( numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        //add numberOfPairsOfCards  x2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
}


struct MemoryGame_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

extension Array {
    var oneAndOnly: Element? {
        if self.count == 1 {
            return first
        } else {
            return nil
        }
    }
}
