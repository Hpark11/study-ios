//
//  NewTextCustomizationsView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct NewTextCustomizationsView: View {
  var body: some View {
    VStack {
      // 1. Markdown
      Text("Hello **iJustine**")
      
      // 2. Italic
      Text("Hello ***iJustine***")
      
      // 3. Links
      Text(
      """
      Hello ***iJustine***
      Subscribe to
      [Kavsoft](https://www.youtube.com/kavsoft)
      """)
      
      // 4. Custom formatter for Date...
      Text(Date().formatted(date: .abbreviated, time: .complete))
    }
  }
}

struct NewTextCustomizationsView_Previews: PreviewProvider {
  static var previews: some View {
    NewTextCustomizationsView()
  }
}
