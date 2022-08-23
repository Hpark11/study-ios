//
//  CanvasView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/08/23.
//

import SwiftUI

struct CanvasView: View {
  var body: some View {
    VStack {
      Canvas { context, size in
        context.draw(Text("Hello"), at: .init(x: size.width / 2, y: 10))
        
        context.draw(Image(systemName: "house.fill"), at: .init(x: size.width / 2, y: size.height / 2))
      }
      .frame(width: 300, height: 300)
      .background(Color.green, in: RoundedRectangle(cornerRadius: 15))
    }
  }
}

struct CanvasView_Previews: PreviewProvider {
  static var previews: some View {
    CanvasView()
  }
}
