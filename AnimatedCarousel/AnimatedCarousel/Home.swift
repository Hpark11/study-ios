//
//  Home.swift
//  AnimatedCarousel
//
//  Created by Startrip Dev on 2022/08/08.
//

import SwiftUI

struct Home: View {
  
  @State var currentTab: Tab = .home
  @Namespace var animation
  
  @State var currentIndex: Int = 0
  var body: some View {
    VStack(spacing: 15) {
      HeaderView()
      SearchBar()
      
      CustomCarousel(
        index: $currentIndex,
        items: movies,
        cardPadding: 150,
        id: \.id
      ) { movie, cardSize  in
        Image(movie.artwork)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: cardSize.width, height: cardSize.height)
          .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
      }
      .padding(.horizontal, -15)
      .padding(.vertical)
      
      TabBar()
    }
    .padding([.horizontal, .top], 15)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .background {
      GeometryReader { proxy in
        LinearGradient(
          colors: [.clear, Color.black, Color.gray],
          startPoint: .top,
          endPoint: .bottom)
      }
      .ignoresSafeArea()
    }
  }
  
  @ViewBuilder
  private func TabBar() -> some View {
    HStack(spacing: 0) {
      ForEach(Tab.allCases, id: \.rawValue) { tab in
        VStack(spacing: -2) {
          Image(tab.rawValue)
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 28, height: 28)
            .foregroundColor(currentTab == tab ? .white : .gray.opacity(0.6))
          
          if currentTab == tab {
            Circle()
              .fill(.white)
              .frame(width: 5, height: 5)
              .offset(y: 10)
              .matchedGeometryEffect(id: "TAB", in: animation)
          }
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
          withAnimation(.easeInOut) {
            currentTab = tab
          }
        }
      }
    }
    .padding(.horizontal)
    .padding(.bottom, 10)
  }
  
  @ViewBuilder
  private func SearchBar() -> some View {
    HStack(spacing: 15) {
      TextField("Search", text: .constant(""))
        .padding(.vertical, 10)
    }
    .padding(.horizontal)
    .padding(.vertical, 6)
    .background {
      RoundedRectangle(cornerRadius: 15, style: .continuous)
        .fill(Color.white.opacity(0.12))
    }
    .padding(.top, 20)
  }
  
  @ViewBuilder
  private func HeaderView() -> some View {
    HStack {
      VStack(
        alignment: .leading, spacing: 6) {
          (
            Text("Hello").fontWeight(.semibold) + Text(" iJustine")
          ).font(.title2)
          
          Text("Book your favorite movie")
            .font(.callout)
            .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
      
      Button {
        
      } label: {
        Image("Justine")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 50, height: 50)
          .clipShape(Circle())
      }
      
    }
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
