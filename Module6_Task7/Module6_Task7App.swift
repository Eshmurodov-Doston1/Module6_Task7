//
//  Module6_Task7App.swift
//  Module6_Task7
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

@main
struct Module6_Task7App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
