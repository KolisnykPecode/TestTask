//
//  User.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation

struct User: Codable {
    let albumID, userID: Int
    let name: String
    let url, thumbnailURL: String
    
    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case userID = "userId"
        case name, url
        case thumbnailURL = "thumbnailUrl"
    }
}

struct UserViewModel {
    let userID: Int
    let name: String
    let url, thumbnailURL: String
    var userPosts: [PostViewModel]?
    
    init(model: User) {
        self.userID = model.userID
        self.name = model.name
        self.url = model.url
        self.thumbnailURL = model.thumbnailURL
    }
}
