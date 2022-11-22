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
