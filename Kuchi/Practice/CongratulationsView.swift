//
//  CongratulationsView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 05.09.23.
//

import SwiftUI

struct CongratulationsView: View {
    let avatarSize: CGFloat = 120
    let userName: String
    
    init(userName: String) {
        self.userName = userName
    }
    
    var body: some View {
        EmptyView()
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView(userName: "Johnny Swift")
            .environmentObject(ChallengesViewModel())
    }
}
