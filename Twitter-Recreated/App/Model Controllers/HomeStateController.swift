//
//  UsersData.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

class HomeStateController {
    
    var homeUsersAndTweets: HomeUsersAndTweets?
    
    init() {
        homeUsersAndTweets = HomeUsersAndTweets()
    }
    
    func loadData(with completionHandler: @escaping ((HomeUsersAndTweets?) -> Void)) {
        // Here you can control things if you want regarding networking and lot of other things.
        HomeNetworkServiceController.shared.fetchHomeFeed(with: completionHandler)
    }
}
