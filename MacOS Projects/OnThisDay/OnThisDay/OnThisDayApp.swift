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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
        .commands {
            Menus()
        }
    }
}
