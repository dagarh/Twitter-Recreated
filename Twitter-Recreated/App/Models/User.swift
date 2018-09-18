//
//  User.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

class User: Decodable {
    let name: String
    let userName: String
    let bioText: String
    let profilePicName: String
    
    init(name: String, userName: String, bioText: String, profilePicName: String) {
        self.name = name
        self.userName = userName
        self.bioText = bioText
        self.profilePicName = profilePicName
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case userName = "username"
        case bioText = "bio"
        case profilePicName = "profileImageUrl"
    }
}
