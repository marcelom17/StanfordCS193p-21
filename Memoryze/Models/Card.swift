//
//  Card.swift
//  Memoryze
//
//  Created by Marcelo Macedo on 17/10/2022.
//

import Foundation

//not being used -> go to MemoryGame 

struct Card<CardContent> {
    var isUp: Bool
    var isMatched: Bool
    var content: CardContent //generic
}


