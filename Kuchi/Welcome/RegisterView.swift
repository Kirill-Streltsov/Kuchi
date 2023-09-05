//
//  RegisterView.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct RegisterView: View {
    
    @FocusState var nameFieldFocused: Bool
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name...", text: $userManager.profile.name)
                .focused($nameFieldFocused)
                .submitLabel(.done)
                .onSubmit(registerUser)
                .bordered()
            HStack {
                Spacer()
                Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remember me")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .fixedSize()
            }
            Button(action: self.registerUser) {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("OK")
                        .font(.body)
                        .bold()
                    
                }
            }
            .disabled(!userManager.isUserNameValid())
            .bordered()
            Spacer()
        }
        .padding()
        .background(WelcomeBackgroundImage())
        
    }
}

// MARK: - Event Handlers
extension RegisterView {
    
    func registerUser() {
        
        nameFieldFocused = false
        
        if userManager.settings.rememberUser {
            userManager.persistProfile()
        } else {
            userManager.clear()
        }
        
        userManager.persistSettings()
        userManager.setRegistered()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let user = UserManager(name: "Ray")
    
    static var previews: some View {
        RegisterView()
            .environmentObject(user)
    }
}
