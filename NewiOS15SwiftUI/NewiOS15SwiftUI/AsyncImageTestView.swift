//
//  AsyncImageTestView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/18.
//

import SwiftUI

struct AsyncImageTestView: View {
  let url = URL(string: "https://pbs.twimg.com/media/FHXYT1rXIAAP-AX?format=jpg&name=900x900")
  
  var body: some View {
    NavigationView {
      VStack {
//        AsyncImage(url: url)
//        // There is not aspect ratio working directly
//        // only frame is working with embedded with clipped...
//          .frame(width: 100, height: 100)
//          .clipped()
        
        AsyncImage(url: url, scale: 1) { phase in
          if let image = phase.image {
            image
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: 300, height: 300)
              .cornerRadius(10)
            // Blur Effects...
            // AKA UIVisualEffect View....
            // We can directly apply shapes in overlay or background
              .overlay(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
          }
          else {
            Image(systemName: "house.fill")
              .font(.largeTitle)
              .foregroundColor(.gray)
          }
        }
      }
      .navigationTitle("Async Image")
      
    }
  }
}

struct AsyncImageTestView_Previews: PreviewProvider {
  static var previews: some View {
    AsyncImageTestView()
  }
}
