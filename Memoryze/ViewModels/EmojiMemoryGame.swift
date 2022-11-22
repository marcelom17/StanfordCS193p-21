//
//  EmojyMemoryGame.swift
//  Memoryze
//
//  Created by Marcelo Macedo on 17/10/2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let vehiclesArray = ["🚗", "🚌", "🛻", "🏎", "🚜", "🏍", "🚚", "🚒", "🚲", "🚐", "🚅", "🚂", "✈️", "🚀", "🚁", "⛵️", "🛳", "🚤", "🛺", "🚃"]
    static let animalsArray = ["🐶", "🐱", "🐭", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵", "🐔", "🐧", "🐦", "🐤", "🦅", "🐝", "🐺", "🐙", "🐴", "🐗", "🦐", "🐳", "🐠", "🐟", "🦀", "🦞"]
    static let fruitsArray = ["🍎", "🍏", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑"]
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 4){ pairIndex in
            vehiclesArray[pairIndex]
        }
    }
    
    //MARK: - Intents
    func choose(_ card: MemoryGame<String>.Card) {
       // objectWillChange.send() //published calls objectWillchange auto
        model.choose(card: card)
    }
}

