//
//  AuthenticationState.swift
//  Authentication
//
//  Created by phong on 08/09/2022.
//

import AuthenticationServices
import FirebaseAuth

class AuthenticationState: NSObject, ObservableObject {
    
    @Published var isProgressView = false
    @Published var loggedInUser: User?
    
    private let auth = Auth.auth()
    
    override init() {
        loggedInUser = auth.currentUser
        super.init()
        auth.addStateDidChangeListener(authStateChanged)
    }
    
    private func authStateChanged(auth: Auth, user: User?) {
        guard user != self.loggedInUser else {return}
        self.loggedInUser = user
    }
    
    func login(email: String, password: String)
    {
        isProgressView = true
        handleSignInWith(email: email, password: password)
    }
    
    func signOut() {
       try? auth.signOut()
    }
    
    private func handleSignInWith(email: String, password: String) {
        auth.signIn(withEmail: email, password: password, completion: handleAuthResultCompletation)
    }
    private func handleAuthResultCompletation(auth: AuthDataResult?, error: Error?) {
        DispatchQueue.main.async {
            self.isProgressView = false
            if let user = auth?.user {
                self.loggedInUser = user
                print("Login success ! \(user)")
            } else if let error = error {
                print("Login fail ! \(error.localizedDescription)")
            }
        }
    }
}
