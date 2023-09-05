//
//  ChallengeView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 05.09.23.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        HStack {
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
        }
        .background(Color.yellow)
    }
}


struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        return ChallengeView()
    }
}
