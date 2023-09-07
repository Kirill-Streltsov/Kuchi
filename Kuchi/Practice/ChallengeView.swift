//
//  ChallengeView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 05.09.23.
//

import SwiftUI

struct ChallengeView: View {
    
    let challengeTest: ChallengeTest
    @ObservedObject var challengesViewModel = ChallengesViewModel()
    @State var showAnswers = false
    
    var body: some View {
        VStack {
            Button(action: {
                showAnswers.toggle()
                challengesViewModel.generateRandomChallenge()
            }) {
                QuestionView(question: challengesViewModel.currentChallenge!.challenge.question)
                    .frame(height: 300)
            }
            ScoreView(numberOfQuestions: 5)
            if showAnswers {
                Divider()
                ChoicesView(challengeTest: challengesViewModel.currentChallenge!)
                    .frame(height: 300)
                .padding() }
        }
        
    }
    
}


struct ChallengeView_Previews: PreviewProvider {
    static let challengeTest = ChallengeTest(
        challenge: Challenge(
            question: "􏰀􏰁􏰂􏰃 􏰅􏰆􏰇",
            pronunciation: "Onegai shimasu",
            answer: "Please"
        ),
        answers: ["Thank you", "Hello", "Goodbye"]
    )
    static var previews: some View {
        return ChallengeView(challengeTest: challengeTest)
    }
}
