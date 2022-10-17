//
//  EmojyMemoryGame.swift
//  Memoryze
//
//  Created by Marcelo Macedo on 17/10/2022.
//

import SwiftUI

class EmojiMemoryGame {
    static let vehiclesArray = ["🚗", "🚌", "🛻", "🏎", "🚜", "🏍", "🚚", "🚒", "🚲", "🚐", "🚅", "🚂", "✈️", "🚀", "🚁", "⛵️", "🛳", "🚤", "🛺", "🚃"]
    static let animalsArray = ["🐶", "🐱", "🐭", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵", "🐔", "🐧", "🐦", "🐤", "🦅", "🐝", "🐺", "🐙", "🐴", "🐗", "🦐", "🐳", "🐠", "🐟", "🦀", "🦞"]
    static let fruitsArray = ["🍎", "🍏", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑"]
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 4){ pairIndex in
            vehiclesArray[pairIndex]
        }
    }
    
}

