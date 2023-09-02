//
//  Profile.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import Foundation

struct Profile : Codable {
    /// (Selected) name of the learner.
    var name: String
    
    /// Initializes a new `Profile` with an empty `name`.
    init() {
        self.name = ""
    }
    
    /// Initializes a new `Profile` with a specified name.
    ///  - Parameters:
    ///     - name Name of the user profile.
    init(named name: String) {
        self.name = name
    }
}
