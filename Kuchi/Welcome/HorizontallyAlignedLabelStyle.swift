//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi
//
//  Created by Kirill Streltsov on 02.09.23.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}
