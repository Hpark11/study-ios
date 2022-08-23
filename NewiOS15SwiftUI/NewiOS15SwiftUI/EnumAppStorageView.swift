//
//  EnumAppStorageView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/23.
//

import SwiftUI

struct EnumAppStorageView: View {
  
  @AppStorage("deviceType") var device: Device?
  
  var body: some View {
    VStack {
      if let deviceType = device {
        Text(deviceType.rawValue)
      }
      
      Button {
        device = .iPhone12
      } label: {
        Text("Hello")
      }
    }
  }
}

enum Device: String {
  case iPhone8 = "8"
  case iPhone11 = "11"
  case iPhone12 = "12"
}

struct EnumAppStorageView_Previews: PreviewProvider {
  static var previews: some View {
    EnumAppStorageView()
  }
}
