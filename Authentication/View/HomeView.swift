//
//  HomeView.swift
//  Authentication
//
//  Created by phong on 09/09/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authState: AuthenticationState
    var body: some View {
        NavigationView {
            ZStack {
            Text("Home View").font(.callout)
            }.background(Color(UIColor.systemBackground))
                .navigationBarTitle("Viet Xanh MHE TOOLS", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: signOutTapped, label: {
                    Image(systemName: "person.circle")
                    Text("Logout")
                }))
                .edgesIgnoringSafeArea(.vertical)
        }
    }
    private func signOutTapped() {
        authState.signOut()
    }
}
