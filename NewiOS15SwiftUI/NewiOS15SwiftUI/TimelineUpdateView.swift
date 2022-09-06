//
//  TimelineView.swift
//  NewiOS15SwiftUI
//
//  Created by Startrip Dev on 2022/09/05.
//

import SwiftUI

struct TimelineUpdateView: View {
  var body: some View {
    // Timeline view for updating view for any periodic events...
    // Or for any animations...
    
    TimelineView(.animation(minimumInterval: 1, paused: false)) { timeline in
      // Mostly used for animation
      
      Text("\(CGFloat.random(in: 0...1000))")
//      Text(timeline.date.formatted(date: .omitted, time: .shortened))
    }
  }
}

struct TimelineUpdateView_Previews: PreviewProvider {
  static var previews: some View {
    TimelineUpdateView()
  }
}
