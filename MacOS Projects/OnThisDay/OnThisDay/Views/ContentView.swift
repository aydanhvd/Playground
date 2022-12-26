//
//  ContentView.swift
//  ContentView
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//
import SwiftUI

struct ContentView: View {
  @EnvironmentObject var appState: AppState
  @State private var eventType: EventType? = .events

  var body: some View {
    NavigationView {
      SidebarView(selection: $eventType)
      GridView(gridData: events)
    }
    .frame(
      minWidth: 700,
      idealWidth: 1000,
      maxWidth: .infinity,
      minHeight: 400,
      idealHeight: 800,
      maxHeight: .infinity)
    .navigationTitle(windowTitle)
  }

  var events: [Event] {
    appState.dataFor(eventType: eventType)
  }

  var windowTitle: String {
    if let eventType = eventType {
      return "On This Day - \(eventType.rawValue)"
    }
    return "On This Day"
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
