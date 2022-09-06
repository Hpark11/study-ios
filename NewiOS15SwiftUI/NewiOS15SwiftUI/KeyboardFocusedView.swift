//
//  KeyboardFocusedView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct KeyboardFocusedView: View {
  @FocusState var showKeyBoard: Bool
  
  var body: some View {
    VStack {
      TextField("Type Here", text: .constant(""))
        .textFieldStyle(.roundedBorder)
        .padding()
        .focused($showKeyBoard)
      
      Text(showKeyBoard ? "Showing" : "Hidden")
      
      Button {
        showKeyBoard.toggle()
      } label: {
        Text("Toggle Keyboard")
      }
    }
  }
}

struct KeyboardFocusedView_Previews: PreviewProvider {
  static var previews: some View {
    KeyboardFocusedView()
  }
}
