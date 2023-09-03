//
//  RegisterView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct RegisterView: View {
    
    
    @FocusState var nameFieldFocused: Bool
    @State var userManager = UserManager()
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name...", text: $userManager.profile.name)
                .focused($nameFieldFocused)
                .submitLabel(.done)
                .bordered()
            Spacer()
        }
        .padding()
        .background(WelcomeBackgroundImage())
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
