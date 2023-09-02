//
//  RegisterView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name...", text: $name)
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
