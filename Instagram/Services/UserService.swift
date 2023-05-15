//
//  UserService.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/15/23.
//

import Foundation
import Firebase

struct UserSrvice {
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
