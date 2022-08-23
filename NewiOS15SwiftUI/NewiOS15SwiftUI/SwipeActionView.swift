//
//  SwipeActionView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/23.
//

import SwiftUI

struct SwipeActionView: View {
  var body: some View {
    
    // Only available in List
    List {
      ForEach(1...20, id: \.self) { index in
        Text("User Task \(index)")
          .swipeActions(edge: .trailing, allowsFullSwipe: false) {
            Button {
              
            } label: {
              Image(systemName: "house.fill")
            }
            .tint(.red)
            
            Button {
              
            } label: {
              Image(systemName: "gearshape")
            }
            .tint(.blue)
          }
        
          .swipeActions(edge: .leading, allowsFullSwipe: false) {
            Button {
              
            } label: {
              Image(systemName: "photo")
            }
            .tint(.yellow)
          
          }
      }
    }
  }
}

struct SwipeActionView_Previews: PreviewProvider {
  static var previews: some View {
    SwipeActionView()
  }
}
