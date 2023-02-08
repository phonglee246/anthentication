//
//  SignUpView.swift
//  Authentication
//
//  Created by phong on 09/09/2022.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var authState: AuthenticationState
    var body: some View {
        
            VStack(spacing: 32) {
                Text("Authentication")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                if authState.isProgressView {
                    ProgressView()
                } else {
             AuthenticationFormView()
                }
            }
    
}
}
