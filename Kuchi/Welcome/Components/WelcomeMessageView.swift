//
//  WelcomeMessageView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
        Label {
            VStack(alignment: .leading) {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundColor(.red)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .padding(.horizontal)
        } icon: {
            LogoImage()
        }
        .labelStyle(HorizontallyAlignedLabelStyle())
    }
}

struct WelcomeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView()
    }
}
