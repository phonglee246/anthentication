//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by phong on 08/09/2022.
//

import SwiftUI
import FirebaseCore

@main
struct AuthenticationApp: App {
    
    init() {
        FirebaseApp.configure()
        
        }
   @StateObject var loginState = AuthenticationState()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(loginState)
        }
    }
}
