//
//  SidebarView.swift
//  SidebarView
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selection: EventType?
    @EnvironmentObject var appState: AppState
    @AppStorage("showTotals") var showTotals = true

    var body: some View {
        List(selection: $selection) {
            Section("TODAY") {
                ForEach(EventType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                        .badge(
                            showTotals
                            ? appState.countFor(eventType: type)
                            : 0
                        )
                }
            }
        }
        .listStyle(.sidebar)
    }
}

struct SidebarView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SidebarView(selection: .constant(nil))
        .preferredColorScheme(.light)
        .frame(width: 200)
      SidebarView(selection: .constant(nil))
        .preferredColorScheme(.dark)
        .frame(width: 200)
    }
  }
}
