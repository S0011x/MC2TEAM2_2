//
//  MC2TEAM2App.swift
//  MC2TEAM2
//
//  Created by suha alrajhi on 05/05/1445 AH.
//

import SwiftUI
import SwiftData

@main
struct MC2TEAM2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            splash()
        }
        .modelContainer(sharedModelContainer)
    }
}
