//
//  HomeUsersAndTweets.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 18/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

struct HomeUsersAndTweets: Decodable {
    var usersList: [User]?
    var tweetsList: [Tweet]?
    
    init() {
        
    }
    
    init(usersList: [User]?, tweetsList: [Tweet]?) {
        self.usersList = usersList
        self.tweetsList = tweetsList
    }
    
    enum CodingKeys: String, CodingKey {
        case usersList = "users"
        case tweetsList = "tweets"
    }
}
