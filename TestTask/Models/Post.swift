//
//  Post.swift
//  TestTask
//
//  Created by kolisnyk9 on 22/11/2022.
//

import Foundation

struct Post: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

struct PostViewModel {
    let userID, id: Int
    let title, body: String
    
    init(model: Post) {
        self.userID = model.userID
        self.id = model.id
        self.title = model.title
        self.body = model.body
    }
}
