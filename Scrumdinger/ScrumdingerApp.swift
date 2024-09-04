//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Admin on 03/09/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
//            MeetingView()
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
