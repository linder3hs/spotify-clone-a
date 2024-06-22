//
//  AppState.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 22/06/24.
//

import Foundation

// Cuantas vistas padres tenemos? (Swift UI)

class AppState: ObservableObject {
    // singleton pattern
    static let shared = AppState()
    
    enum AppScreens {
        case launch
        case signIn
        case main
    }
    
    @Published var currentScreen: AppScreens = .launch
    
}
