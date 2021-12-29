//
//  Daily_GoalsApp.swift
//  Shared
//
//  Created by Wesley Matlock on 12/29/21.
//

import SwiftUI

@main
struct Daily_GoalsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
