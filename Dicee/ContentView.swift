//
//  ContentView.swift
//  Dicee
//
//  Created by Harshvardhan Basava on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDicenumber = 1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 220, height: 200, alignment: .center)
                Spacer()
                HStack{
                    Dice(diceNumber: leftDiceNumber)
                    Dice(diceNumber: rightDicenumber)
                }.padding()
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDicenumber = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                }).background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12 Pro Max")
    }
}

struct Dice: View {
    let diceNumber: Int
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150, height: 150, alignment: .center)
            .padding()
    }
}
