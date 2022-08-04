//
//  ContentView.swift
//  Deeplink
//
//  Created by Startrip Dev on 2022/08/04.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var appData: AppDateModel
  
  var body: some View {
    Home()
      .environmentObject(appData)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
