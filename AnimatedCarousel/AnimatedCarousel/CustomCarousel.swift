//
//  CustomCarousel.swift
//  AnimatedCarousel
//
//  Created by Startrip Dev on 2022/08/08.
//

import SwiftUI

struct CustomCarousel<Content: View, Item, ID>: View
where Item: RandomAccessCollection, ID: Hashable {
  var content: (Item.Element, CGSize) -> Content
  var id: KeyPath<Item.Element, ID>
  
  var spacing: CGFloat
  var cardPadding: CGFloat
  var items: Item
  
  @Binding var index: Int
  
  init(
    index: Binding<Int>,
    items: Item,
    spacing: CGFloat = 30,
    cardPadding: CGFloat = 80,
    id: KeyPath<Item.Element, ID>,
    @ViewBuilder content: @escaping (Item.Element, CGSize) -> Content
  ) {
    self.content = content
    self.id = id
    self._index = index
    self.spacing = spacing
    self.cardPadding = cardPadding
    self.items = items
  }
  
  var body: some View {
    GeometryReader { proxy in
      let size = proxy.size
      
      let cardWidth = size.width - (cardPadding - spacing)
      
      LazyHStack(spacing: spacing) {
        ForEach(items, id: id) { movie in
          content(movie, CGSize(width: cardWidth, height: size.height))
            .frame(width: cardWidth, height: size.height)
        }
      }
      .padding(.horizontal, spacing)
    }
    .padding(.top, 60)
  }
}

struct CustomCarousel_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
