//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Admin on 03/09/2024.
//

import SwiftUI
import Foundation

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
