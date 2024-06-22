//
//  LaunchViewModel.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 22/06/24.
//

import Foundation
import FirebaseAuth

class LaunchViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    init() {
        appState.currentScreen = Auth.auth().currentUser == nil ? .signIn : .main
    }
}
