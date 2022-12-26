//
//  OnThisDayApp.swift
//  OnThisDayApp
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import SwiftUI

@main
struct OnThisDayApp: App {
    @StateObject var appState = AppState()
    @AppStorage("displayMode") var displayMode = DisplayMode.auto

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
                .onAppear {
                  DisplayMode.changeDisplayMode(to: displayMode)
                }
                .onChange(of: displayMode) { newValue in
                  DisplayMode.changeDisplayMode(to: newValue)
                }
        }
        .commands {
            Menus()
        }
    }
}
