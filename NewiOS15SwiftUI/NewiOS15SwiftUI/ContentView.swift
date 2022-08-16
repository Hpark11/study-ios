//
//  ContentView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/12.
//

import SwiftUI

struct ContentView: View {
  let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
  
  @State var users: [User] = []
  
  @State var searchText: String = ""
  
  var body: some View {
    NavigationView {
      List(users) { user in
        VStack(alignment: .leading, spacing: 4) {
          Text(user.name)
          Text(user.email)
            .font(.caption)
        }
      }
      .refreshable(action: {
        await fetchUsers()
      })
      
      // adding search bar
      // only available with navigation view
      
      .searchable(text: $searchText, prompt: Text("Search User"), suggestions: {
        ForEach(users.filter({ user in
          searchText == "" ? true : user.email.lowercased().contains(searchText.lowercased())
          
        })) { user in
          Text(user.email)
            .searchCompletion(user.name)
        }
      })
      .navigationTitle("Pull to Refresh")
    }
  }
  
  func fetchUsers() async {
    let sesssion = URLSession(configuration: .default)
    
    do {
      let task = try await sesssion.data(from: url)
      let users = try JSONDecoder().decode([User].self, from: task.0)
      self.users = users
    } catch {
      
    }
  }
}

struct User: Identifiable, Decodable {
  var id: Int
  var name: String
  var email: String
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
