//
//  DeeplinkApp.swift
//  Deeplink
//
//  Created by Startrip Dev on 2022/08/04.
//

import SwiftUI

@main
struct DeeplinkApp: App {
  
  @StateObject var appData: AppDateModel = .init()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(appData)
        .onOpenURL { url in
          print(url)
          if appData.checkDeepLink(url: url) {
            print("FROM DEEP LINK")
          } else {
            print("FALL BACK DEEP LINK")
          }
        }
    }
  }
}
