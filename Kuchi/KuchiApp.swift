//
//  KuchiApp.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

@main
struct KuchiApp: App {
    
    let userManager = UserManager()
    
    init() {
        userManager.load()
    }
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
