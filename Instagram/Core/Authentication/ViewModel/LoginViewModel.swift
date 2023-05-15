//
//  LoginViewModel.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/15/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(with: email, password: password)
    }
}
