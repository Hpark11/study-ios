//
//  NewButtonCustomizationView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct NewButtonCustomizationView: View {
  
  @State var isOn = false
  var body: some View {
    NavigationView {
      VStack {
        Button {
          
        } label: {
          Text("iJustine")
        }
        .buttonStyle(.bordered)
        // Higher Prominence
        .controlSize(.large)
  //      .controlProminence(.increased)
        .tint(.red)
        
        Toggle(isOn: $isOn) {
          Image(systemName: "star.fill")
        }
        .toggleStyle(.button)
  //      .padding(.horizontal, 40)
        // Also can be changed control size
        .controlSize(.large)
        .tint(.purple)
        
        Text("Hello")
          .navigationTitle("Home")
          .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
              ControlGroup {
                Button {
                  
                } label: {
                    Image(systemName: "person")
                }
                
                Button {
                  
                } label: {
                    Image(systemName: "gearshape")
                }
              }
              .controlGroupStyle(.navigation)
            }
          }
      }
    }
    
  }
}

struct NewButtonCustomizationView_Previews: PreviewProvider {
  static var previews: some View {
    NewButtonCustomizationView()
  }
}
