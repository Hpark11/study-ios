//
//  KeyboardAccessoryView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct KeyboardAccessoryView: View {
  var body: some View {
    NavigationView {
      VStack {
        TextField("Type here", text: .constant(""))
          .textFieldStyle(.roundedBorder)
          .padding()
      }
      .navigationTitle("Home")
      .toolbar(content: {
        ToolbarItem(placement: .keyboard) {
          HStack {
            Button {
              
            } label: {
              Image(systemName: "person")
                .foregroundStyle(.red)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
              HStack(spacing: 15) {
                ForEach(1...30, id: \.self) { _ in
                  Circle()
                    .fill(Color.purple)
                    .frame(width: 40, height: 40)
                }
              }
            }
          }
        }
      })
    }
    
  }
}

struct KeyboardAccessoryView_Previews: PreviewProvider {
  static var previews: some View {
    KeyboardAccessoryView()
  }
}
