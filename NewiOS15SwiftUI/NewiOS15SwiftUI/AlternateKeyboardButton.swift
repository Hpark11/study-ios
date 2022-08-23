//
//  AlternateKeyboardButton.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/23.
//

import SwiftUI

struct AlternateKeyboardButton: View {
    var body: some View {
      TextField("iJustine", text: .constant(""))
        .textFieldStyle(.roundedBorder)
        .submitLabel(.go)
        .padding()
    }
}

struct AlternateKeyboardButton_Previews: PreviewProvider {
    static var previews: some View {
        AlternateKeyboardButton()
    }
}
