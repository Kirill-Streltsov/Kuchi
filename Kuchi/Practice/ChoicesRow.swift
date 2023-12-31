//
//  ChoicesRow.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 05.09.23.
//

import SwiftUI

/// Displays the choice available for the practice question.
struct ChoicesRow: View {
    var choice: String
    
    var body: some View {
        Text(choice)
            .font(.largeTitle)
    }
}

struct ChoicesRow_Previews: PreviewProvider {
    static var previews: some View {
        ChoicesRow(choice: "Hello")
    }
}
