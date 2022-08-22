//
//  SafeAreaInsectView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/22.
//

import SwiftUI

struct SafeAreaInsectView: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 10) {
        ForEach(1...25, id: \.self) { _ in
          HStack {
            Circle()
              .fill(Color.gray)
              .frame(width: 45, height: 45)
            
            VStack(alignment: .leading, spacing: 15) {
              Rectangle()
                .fill(Color.gray)
                .frame(height: 15)
              
              Rectangle()
                .fill(Color.gray)
                .frame(height: 15)
                .padding(.trailing, 50)
            }
          }
        }
      }
      .padding()
    }
    .safeAreaInset(edge: .bottom) {
      // It will automatically add apdding for the main content
      Capsule()
        .fill(Color.red)
        .frame(height: 55)
        .padding(.horizontal)
    }
  }
}

struct SafeAreaInsectView_Previews: PreviewProvider {
  static var previews: some View {
    SafeAreaInsectView()
  }
}
