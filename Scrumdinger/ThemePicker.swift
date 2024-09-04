//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Admin on 04/09/2024.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selection: Theme
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
