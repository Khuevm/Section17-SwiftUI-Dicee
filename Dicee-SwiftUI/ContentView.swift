//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Khue on 28/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    Spacer()
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 120, height: 60, alignment: .center)
                }.background(.red)
                    .padding()

            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .padding(.horizontal)
    }
}
