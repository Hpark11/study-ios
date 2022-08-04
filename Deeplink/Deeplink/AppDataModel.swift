//
//  AppDataModel.swift
//  Deeplink
//
//  Created by Startrip Dev on 2022/08/04.
//

import SwiftUI

class AppDateModel: ObservableObject {
  @Published var currentTab: Tab = .home
  @Published var currentDetailPage: String?
  
  func checkDeepLink(url: URL) -> Bool {
    guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
      return false
    }
    
    if host == Tab.home.rawValue {
      currentTab = .home
    } else if host == Tab.search.rawValue {
      currentTab = .search
    } else if host == Tab.settings.rawValue {
      currentTab = .settings
    } else {
      return checkInternalLinks(host: host)
    }
    
    return true
  }
  
  func checkInternalLinks(host: String) -> Bool {
    if let index = coffees.firstIndex(where: { coffee in
      return coffee.id == host
    }) {
      currentTab = .search
      currentDetailPage = coffees[index].id
      return true
    }
    
    return false
  }
}

enum Tab: String {
  case home = "home"
  case search = "search"
  case settings = "settings"
}
