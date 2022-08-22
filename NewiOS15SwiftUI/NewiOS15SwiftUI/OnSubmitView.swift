//
//  OnSubmitView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/22.
//

import SwiftUI

struct OnSubmitView: View {
  var body: some View {
    NavigationView {
      VStack {
        Text("OnTrigger...")
        TextField("Type Here", text: .constant(""))
          .textFieldStyle(.roundedBorder)
          .padding()
      }
      .searchable(text: .constant(""))
      .navigationTitle("Home")
    }
    .onSubmit(of: .search) {
      print("Search field submitted...")
    }
  }
}

struct OnSubmitView_Previews: PreviewProvider {
  static var previews: some View {
    OnSubmitView()
  }
}
