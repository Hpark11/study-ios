//
//  Movie.swift
//  AnimatedCarousel
//
//  Created by Startrip Dev on 2022/08/08.
//

import Foundation

struct Movie: Identifiable, Equatable {
  var id = UUID().uuidString
  var movieTitle: String
  var artwork: String
}

var movies: [Movie] = [
  .init(movieTitle: "Ad Astra", artwork: "Movie1"),
  .init(movieTitle: "Start Wars", artwork: "Movie2"),
  .init(movieTitle: "Toys Story4", artwork: "Movie3"),
  .init(movieTitle: "Thor Love & Thunder", artwork: "Movie4"),
  .init(movieTitle: "Spiderman", artwork: "Movie5"),
  .init(movieTitle: "Shang Chi", artwork: "Movie6"),
  .init(movieTitle: "HawkEye", artwork: "Movie7"),
]
