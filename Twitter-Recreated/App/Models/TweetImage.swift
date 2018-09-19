//
//  TweetImage.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 19/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

struct TweetImage: Decodable {
    let width: Double?
    let height: Double?
    let imageURL: String?
    
    enum CodingKeys: String, CodingKey {
        case width
        case height
        case imageURL = "imageUrl"
    }
}
