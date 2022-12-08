//
//  ApplicationMenu.swift
//  DadJokes
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import SwiftUI

class ApplicationMenu: NSObject {
    let menu = NSMenu()

    func createMenu() -> NSMenu {
        let jokeView = JokeView()
        let topView = NSHostingController(rootView: jokeView)
        topView.view.frame.size = CGSize(width: 225, height: 225)

        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())

        //aboutMenuItem
        let aboutMenuItem = NSMenuItem(
            title: "About Dad Jokes",
            action: #selector(about),
            keyEquivalent: ""
        )
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)

        //webLinkMenuItem
        let webLinkMenuItem = NSMenuItem(
            title: "Code With Chris",
            action: #selector(openLink),
            keyEquivalent: ""
        )
        webLinkMenuItem.target = self
        webLinkMenuItem.representedObject = "https://codewithchris.com"
        menu.addItem(webLinkMenuItem)

        //quitMenuItem
        let quitMenuItem = NSMenuItem(
            title: "Quit",
            action: #selector(quit),
            keyEquivalent: "q"
        )
        quitMenuItem.target = self
        menu.addItem(quitMenuItem)

        return menu
    }

    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }

    @objc func openLink(sender: NSMenuItem) {
        let link = sender.representedObject as? String
        guard let link = link,
              let url = URL(string: link)
        else { return }

        NSWorkspace.shared.open(url)
    }

    @objc func quit(sender: NSMenuItem) {
        NSApp.terminate(self)
    }
}
