//
//  PostData.swift
//  Hacker News
//
//  Created by Prince Alvin Yusuf on 28/02/21.
//

import Foundation

struct Result: Codable {
    let hits: [Post]
    
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
