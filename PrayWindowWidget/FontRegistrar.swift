//
//  FontRegistrar.swift
//  PrayWindowWidget
//
//  Created by Codex on 23/04/2026.
//

import CoreText
import Foundation

enum FontRegistrar {
    static func registerEmbeddedFonts() {
        registerFonts(in: Bundle.main)
    }

    private static func registerFonts(in bundle: Bundle) {
        guard let resourcesURL = bundle.resourceURL else {
            return
        }

        let resourceKeys: [URLResourceKey] = [.isRegularFileKey, .nameKey]
        guard let enumerator = FileManager.default.enumerator(
            at: resourcesURL,
            includingPropertiesForKeys: resourceKeys
        ) else {
            return
        }

        for case let fontURL as URL in enumerator where ["ttf", "otf"].contains(fontURL.pathExtension.lowercased()) {
            CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, nil)
        }
    }
}
