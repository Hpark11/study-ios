//
//  SystemImageRenderingModeVariantView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct SystemImageRenderingModeVariantView: View {
  var body: some View {
    VStack {
      Image(systemName: "brain.head.profile")
        .font(.largeTitle)
      // for system rendering mode
        .symbolRenderingMode(.palette)
        .foregroundStyle(.orange, .purple, .red)
      
      // We can also apply circle square variant in SwiftUI itself
      Image(systemName: "person")
        .font(.system(size: 55))
        .symbolVariant(.circle)
    }
    
  }
}

struct SystemImageRenderingModeVariantView_Previews: PreviewProvider {
  static var previews: some View {
    SystemImageRenderingModeVariantView()
  }
}
