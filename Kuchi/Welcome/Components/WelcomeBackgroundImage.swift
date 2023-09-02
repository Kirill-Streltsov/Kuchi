//
//  WelcomeBackgroundImage.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        Image("welcome-background")
            .resizable()
            .aspectRatio(1 / 1, contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .saturation(0.5)
            .blur(radius: 5)
            .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
