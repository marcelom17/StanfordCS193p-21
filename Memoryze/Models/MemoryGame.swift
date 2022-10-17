//
//  MemoryGame.swift
//  Memoryze
//
//  Created by Marcelo Macedo on 17/10/2022.
//

import Foundation

struct MemoryGame<CardContent>{
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        //add numberOfPairsOfCards x2 to create a Pair
        for pairIndex in 0..<numberOfPairsOfCards{
            var content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))

        }
    }
    
    func choose(card: Card){
        
    }
    
    struct Card {
        var isUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent //generic
    }
}
