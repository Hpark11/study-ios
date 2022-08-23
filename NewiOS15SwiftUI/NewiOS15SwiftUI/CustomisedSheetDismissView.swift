//
//  CustomisedSheetDismissView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/22.
//

import SwiftUI

struct CustomisedSheetDismissView: View {
  @State var show = false
  
  var body: some View {
    VStack {
      Button("Show Sheet") {
        show.toggle()
      }
    }
    .sheet(isPresented: $show) {
      Text("I'm Sheet View....")
        
      // Disabling Gesture Dismiss..
        .interactiveDismissDisabled(true)
      
    }
  }
} 

struct CustomisedSheetDismissView_Previews: PreviewProvider {
  static var previews: some View {
    CustomisedSheetDismissView()
  }
}
