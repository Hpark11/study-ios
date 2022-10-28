//
//  ContentView.swift
//  SwiftUI4NewLayoutAPI
//
//  Created by Startrip Dev on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
  @State var tags: [Tag] = rawTags.compactMap { tag -> Tag? in
    return .init(name: tag)
  }
  
  var body: some View {
    NavigationStack {
      VStack {
        Toggle("SwiftUI", isOn: .constant(false))
          .toggleStyle(.button)
          .buttonStyle(.bordered)
      }
      .padding(15)
      .navigationTitle(Text("Layout"))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

var rawTags: [String] = [
  "SwiftUI", "Xcode", "Apple", "WWDC 22", "iOS 16", "iPadOS 16"
]

struct Tag: Identifiable {
  var id = UUID().uuidString
  var name: String
  var isSelected: Bool = false
}
