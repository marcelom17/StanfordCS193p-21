//
//  MemoryzeApp.swift
//  Memoryze
//
//  Created by Marcelo Macedo on 25/08/2022.
//

import SwiftUI

@main
struct MemoryzeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
