//
//  Tweet.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 16/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

struct Tweet: Decodable {
    let user: User?
    let message: String?
    let tweetImage: TweetImage?
    
    enum CodingKeys: String, CodingKey {
        case user
        case message
        case tweetImage = "image"
    }
}
