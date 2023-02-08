//
//  AuthenticationFormView.swift
//  Authentication
//
//  Created by phong on 08/09/2022.
//

import SwiftUI

struct AuthenticationFormView: View {
    @State var email:String = ""
    @State var password:String = ""
    @State var isshowpassword = false
    @EnvironmentObject var authState: AuthenticationState
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Email:", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            if isshowpassword {
                TextField("Password:", text: $password)
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
            } else {
                SecureField("Password:", text: $password)
            }
            Toggle("Show password", isOn: $isshowpassword)
            Button(action: emailAuthenticationTapped
            ) { Text("Login").font(.callout)
            }.disabled(email.count == 0 || password.count == 0).font(.largeTitle)
                
        }.textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 300)
            
    }
    private func emailAuthenticationTapped() {
        authState.login(email: email, password: password)
    }
}

//struct AuthenticationFormView_Previews: PreviewProvider {
    //static var previews: some View {
   //     AuthenticationFormView()
   // }
//}
