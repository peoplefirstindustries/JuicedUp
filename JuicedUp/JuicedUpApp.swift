//
//  JuicedUpApp.swift
//  JuicedUp
//
//  Created by Richard Crichlow on 3/22/23.
//

import SwiftUI

@main
struct JuicedUpApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
