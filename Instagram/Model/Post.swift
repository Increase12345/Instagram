//
//  Post.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/14/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is some caption fornow", likes: 123, imageUrl: "Odessa", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Wakanda Forever", likes: 104, imageUrl: "Kyiv", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Iron Man", likes: 12, imageUrl: "Poltava", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Venom is hungry", likes: 314, imageUrl: "Donetsk", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is the best feeling", likes: 76, imageUrl: "Kharkiv", timestamp: Date(), user: User.MOCK_USERS[4])
    ]
}
