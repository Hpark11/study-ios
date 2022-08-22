//
//  ContentTabView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/22.
//

import SwiftUI

struct ContentTabView: View {
  @State var headtBadgeSeen = false
  var body: some View {
    TabView {
      Color.red
        .tabItem {
          Image(systemName: "house.fill")
        }
        .badge("10")
      Color.green
        .onAppear(perform: {
          headtBadgeSeen = true
        })
        .tabItem {
          Image(systemName: "suit.heart.fill")
        }
        .badge(headtBadgeSeen ? 0 : 20)
      
      Color.yellow
        .tabItem {
          Image(systemName: "gearshape")
        }
    }
  }
}

struct ContentTabView_Previews: PreviewProvider {
  static var previews: some View {
    ContentTabView()
  }
}
