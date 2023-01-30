//
//  Toolbar.swift
//  OnThisDay
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import SwiftUI

struct ToolBar: CustomizableToolbarContent {
    var body: some CustomizableToolbarContent {
        ToolbarItem(
            id: "toggleSidebar",
            placement: .navigation,
            showsByDefault: true
        ) {
            Button {
                toggleSidebar()
            } label: {
                Label("Toggle Sidebar", systemImage: "sidebar.left")
            }
            .help("Toggle Sidebar")
        }
    }

    func toggleSidebar(){
        NSApp.keyWindow?.contentViewController?.tryToPerform(
            #selector(NSSplitViewController.toggleSidebar(_:)),
            with: nil
        )
    }
}
