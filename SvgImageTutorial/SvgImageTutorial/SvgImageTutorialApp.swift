//
//  SvgImageTutorialApp.swift
//  SvgImageTutorial
//
//  Created by KIM MIMI on 3/18/25.
//

import SwiftUI
import SDWebImageSwiftUI
import SDWebImageSVGCoder

@main
struct SvgImageTutorialApp: App {
    init() {
        // SVG support
        SDImageCodersManager.shared.addCoder(SDImageSVGCoder.shared)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
