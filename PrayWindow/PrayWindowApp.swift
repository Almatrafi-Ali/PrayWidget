//
//  PrayWindowApp.swift
//  PrayWindow
//
//  Created by Nahedh Alharbi on 23/04/2026.
//

import SwiftUI
import UIKit

@main
struct PrayWindowApp: App {
    init() {
        FontRegistrar.registerEmbeddedFonts()
        Self.configureBarAppearances()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

    /// Force opaque Tab Bar and Navigation Bar across all iOS versions
    /// (iOS 26's Liquid Glass tab bar is translucent by default — this restores classic opaque behavior
    /// so content never visually leaks behind bars.)
    private static func configureBarAppearances() {
        let barColor = UIColor(red: 248.0 / 255.0, green: 244.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)

        let tabAppearance = UITabBarAppearance()
        tabAppearance.configureWithOpaqueBackground()
        tabAppearance.backgroundColor = barColor
        tabAppearance.shadowColor = UIColor.black.withAlphaComponent(0.06)
        UITabBar.appearance().standardAppearance = tabAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabAppearance

        let navAppearance = UINavigationBarAppearance()
        navAppearance.configureWithOpaqueBackground()
        navAppearance.backgroundColor = barColor
        navAppearance.shadowColor = UIColor.black.withAlphaComponent(0.06)
        UINavigationBar.appearance().standardAppearance = navAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navAppearance
        UINavigationBar.appearance().compactAppearance = navAppearance
    }
}
