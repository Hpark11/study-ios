//
//  NewForegroundStyleView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct NewForegroundStyleView: View {
  var body: some View {
    VStack {
      // There are four foreground styles available...
      // Defference is just Opacity for each level
      
      Text("iJustine")
        .foregroundStyle(.primary)
      
      Text("iJustine")
        .foregroundStyle(.secondary)
      
      Text("iJustine")
        .foregroundStyle(.tertiary)
      
      Text("iJustine")
        .foregroundStyle(.quaternary)
    }
    .foregroundStyle(.red)
  }
}

struct NewForegroundStyleView_Previews: PreviewProvider {
  static var previews: some View {
    NewForegroundStyleView()
  }
}
