//
//  ContentView.swift
//  Authentication
//
//  Created by phong on 08/09/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authState: AuthenticationState
    var body: some View {
        if authState.loggedInUser != nil {
            HomeView()
        } else {
            SignUpView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
