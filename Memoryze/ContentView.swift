//
//  ContentView.swift
//  Memoryze
//
//  Created by Marcelo Macedo on 25/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojiCount = 4
    let vehiclesArray = ["🚗", "🚌", "🛻", "🏎", "🚜", "🏍", "🚚", "🚒", "🚲", "🚐", "🚅", "🚂", "✈️", "🚀", "🚁", "⛵️", "🛳", "🚤", "🛺", "🚃"]
    let animalsArray = ["🐶", "🐱", "🐭", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵", "🐔", "🐧", "🐦", "🐤", "🦅", "🐝", "🐺", "🐙", "🐴", "🐗", "🦐", "🐳", "🐠", "🐟", "🦀", "🦞"]
    let fruitsArray = ["🍎", "🍏", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑"]
    
    @State var gridArray = [String]()
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(gridArray[0..<gridArray.count], id: \.self) { val in
                        CardView(content: val).aspectRatio(2/3, contentMode: .fit )
                     }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack{
                vehicles
                Spacer()
                fruits
                Spacer()
                animals
                
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    
    var vehicles: some View{
        Button {
            //Change array
            print("Change Array To Vehicles")
            gridArray = vehiclesArray.shuffled()
        } label: {
            VStack {
                Image(systemName: "car")
                Text("Vehicles").font(.body)
            }
        }
    }
    
    var fruits: some View{
        Button {
            //Change array
            print("Change Array To Fruits")
            gridArray = fruitsArray.shuffled()
        } label: {
            VStack {
                Image(systemName: "camera.macro")
                Text("Fruits").font(.body)
            }
        }
    }
    
    var animals: some View{
        Button {
            //Change array
            print("Change Array To Animals")
            gridArray = animalsArray.shuffled()
        } label: {
            VStack {
                Image(systemName: "tortoise.fill")
                Text("Animals").font(.body)
            }
        }
    }
    
}

struct CardView : View {
    
    @State var isFaceUp = false
    var content : String
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            else {
                shape.fill()
            }
        }
        .onTapGesture {
            self.isFaceUp = !self.isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
