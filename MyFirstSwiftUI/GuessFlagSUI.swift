//
//  GuessFlagSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct GuessFlagSUI: View {
    
    @State private var countries = ["UK", "Poland", "Ukraine", "Corea", "France", "Germany", "Greece", "Japan", "Scotland", "USA"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, .blue]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Choose flag: ")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                        showingScore = true
                    } label: {
                        Image(self.countries[number])
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 250, height: 130)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 10)
                    }

                }
                
                Text("Your score: \(score)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                Spacer()
                
            } // main v-stack
        }.alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue"), action: {
                self.askQuestion()
            }))
        }
    } // body
    
    private func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    private func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "This is correct answer!"
            score += 1
        } else {
            scoreTitle = "This is incorrect answer!!!"
            score -= 1
        }
    }
    
    
}

struct GuessFlagSUI_Previews: PreviewProvider {
    static var previews: some View {
        GuessFlagSUI()
    }
}
