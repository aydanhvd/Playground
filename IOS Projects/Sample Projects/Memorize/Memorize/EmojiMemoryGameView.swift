//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Aydan Haqverdili on 10/9/21.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var game: EmojiMemoryGame
    
    var body: some View {
        AspectVGrid(items: game.cards, aspectRatio: 2/3) { card in
            cardView(for: card)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }

    @ViewBuilder
    private func cardView(for card: EmojiMemoryGame.Card) -> some View {
        if card.isMatched , !card.isFaceUp {
         Rectangle().opacity(0)
        } else {
          CardView(card)
                .padding(4)
                .onTapGesture {
                    game.choose(card)
            }
        }
    }

}

struct CardView: View {
    private let card: EmojiMemoryGame.Card

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape =  RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
                if card.isFaceUp {
                    shape.foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    Pie(startAngle: Angle(degrees: 0-90),
                        endAngle: Angle(degrees: 110-90))
                        .opacity(0.5)
                    Text(card.content)
                        .font(font(in: geometry.size))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape
                }
            }
        }
    }
    
    init(_ card: EmojiMemoryGame.Card) {
        self.card = card
    }

    private func font(in size: CGSize) -> Font {
        .system(size: min( size.width, size.height) * DrawingConstants.fontScale )
    }

    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.7
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        
        EmojiMemoryGameView(game: game)
            .preferredColorScheme(.dark)
        EmojiMemoryGameView(game: game)
    }
}
