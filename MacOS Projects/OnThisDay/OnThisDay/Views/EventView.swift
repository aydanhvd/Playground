//
//  EventView.swift
//  EventView
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//
import SwiftUI

struct EventView: View {
  var event: Event

  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 30) {
        Text(event.year)
          .font(.title)

        Text(event.text)
          .font(.title3)

        VStack(alignment: .leading, spacing: 10) {
          Text("Related Links:")
            .font(.title2)

          ForEach(event.links) { link in
            Link(link.title, destination: link.url)
              .onHover { inside in
                if inside {
                  NSCursor.pointingHand.push()
                } else {
                  NSCursor.pop()
                }
              }
          }
        }
        Spacer()
      }
      Spacer()
    }
    .padding()
    .frame(width: 250)
  }
}

struct EventView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      EventView(event: Event.sampleEvent)
    }
  }
}
