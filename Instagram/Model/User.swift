//
//  User.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/13/23.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var fullname: String?
    let email: String
    var profileImageUrl: String?
    var bio: String?
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "k0li4ka", fullname: "Nick Pavlov", email: "user@gmail.com", profileImageUrl: nil, bio: "Gotham Dark Night"),
        .init(id: NSUUID().uuidString, username: "venom", fullname: nil, email: "nssdn@gmail.com", profileImageUrl: nil, bio: "We gotta go"),
        .init(id: NSUUID().uuidString, username: "batman", fullname: "Bruce Lee", email: "hjmf@gmail.com", profileImageUrl: nil, bio: "Herer we are"),
        .init(id: NSUUID().uuidString, username: "ironman", fullname: "Andry Malikr", email: "sdmnf@gmail.com", profileImageUrl: nil, bio: "I live here"),
        .init(id: NSUUID().uuidString, username: "spiderman", fullname: "Max Yusupov", email: "iernv@gmail.com", profileImageUrl: nil, bio: "Tonight we are")
    ]
}
