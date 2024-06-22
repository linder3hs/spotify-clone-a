//
//  spotify_clone_aApp.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 11/05/24.
//

import SwiftUI

@main
struct spotify_clone_aApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    let persistenceController = PersistenceController.shared
    
    @StateObject var appState: AppState = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .launch:
                LaunchView()
                    .environmentObject(appState)
            case .signIn:
                SignInView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            }
            
        }
    }
}
