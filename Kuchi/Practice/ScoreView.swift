//
//  ScoreView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 05.09.23.
//

import SwiftUI

struct ScoreView: View {
    
    @State var numberOfAnswered = 0
    let numberOfQuestions: Int
    
    var body: some View {
        
        HStack {
            Text("\(numberOfAnswered)/\(numberOfQuestions)")
                .font(.caption)
                .padding(4)
            Spacer()
        }
        
    }
    
}


struct ScoreView_Previews: PreviewProvider {
        
    static var previews: some View {
        ScoreView(numberOfQuestions: 5)
    }
}
