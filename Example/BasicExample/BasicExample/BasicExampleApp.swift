//
//  BasicExampleApp.swift
//  BasicExample
//
//  Created by Brandon Sneed on 2/23/22.
//

import SwiftUI
import Segment
import SegmentComscore

@main
struct BasicExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension Analytics {
    static var main: Analytics {
        let analytics = Analytics(configuration: Configuration(writeKey: "W")
                    .flushAt(1)
                    .trackApplicationLifecycleEvents(true))
        analytics.add(plugin: ComscoreDestination())
        return analytics
    }
}
