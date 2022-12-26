//
//  OnThisDayApp.swift
//  OnThisDayApp
//
//  Created by Aydan Haqverdili on 12/19/22.
//

import SwiftUI

@main
struct OnThisDayApp: App {
  @StateObject var appState = AppState()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(appState)
    }
  }
}
