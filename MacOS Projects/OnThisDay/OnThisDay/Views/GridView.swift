//
//  GridView.swift
//  GridView
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import SwiftUI

struct GridView: View {
  var gridData: [Event]

  var columns: [GridItem] {
    [
      GridItem(
        .adaptive(minimum: 250, maximum: 250),
        spacing: 20)
    ]
  }

  var body: some View {
    ScrollView {
      LazyVGrid(columns: columns, spacing: 15) {
        ForEach(gridData) {
          EventView(event: $0)
            .frame(height: 350, alignment: .topLeading)
            .background()
            .clipped()
            .border(.secondary, width: 1)
            .padding(.bottom, 5)
            .shadow(color: .primary.opacity(0.3), radius: 3, x: 3, y: 3)
        }
      }
    }
    .padding(.vertical)
  }
}
