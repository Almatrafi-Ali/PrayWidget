//
//  PrayWindowApp.swift
//  PrayWindow
//
//  Created by Nahedh Alharbi on 23/04/2026.
//

import SwiftUI

@main
struct PrayWindowApp: App {
    init() {
        FontRegistrar.registerEmbeddedFonts()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
