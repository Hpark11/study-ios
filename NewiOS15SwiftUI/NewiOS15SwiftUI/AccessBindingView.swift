//
//  AccessBindingView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct AccessBindingView: View {
  struct User: Identifiable {
    var id = UUID().uuidString
    var userName: String
  }
  
  @State var users: [User] = [
    User(userName: "A"),
    User(userName: "B"),
    User(userName: "C"),
    User(userName: "D")
  ]
  
  var body: some View {
    List {
      // Now in SwiftUI we can easily get BInding for items in Collection
      // By using $...
      ForEach($users) { $user in
        TextField("Edit Name", text: $user.userName)
      }
    }
  }
}



struct AccessBindingView_Previews: PreviewProvider {
  static var previews: some View {
    AccessBindingView()
  }
}
