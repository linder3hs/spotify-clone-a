//
//  spotify_clone_aApp.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 11/05/24.
//

import SwiftUI

@main
struct spotify_clone_aApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
