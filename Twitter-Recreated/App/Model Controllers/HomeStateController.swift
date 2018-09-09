//
//  UsersData.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

class HomeStateController {
    private var usersList: [User]
    
    init() {
        usersList = [User]()
        loadInitialUsers()
    }
    
    func loadInitialUsers() {
        
        let user1 = User(profilePicName: "Himanshu Dagar", name: "Himanshu Dagar", username: "hdagar3", bioText: "Hi my name is Himanshu Dagar. I want to get into iOS development. I am very passionate about coding and all these stuff. This is just a random stuff to check few things. ")
        
        let user2 = User(profilePicName: "Prince Bharti", name: "Prince Bharti", username: "bharti3", bioText: "Bharti is prince bharti. He is my friend and we are currently working in iOS together. But he is my best friend. You would always be my best friend. ")
        
        usersList.append(user1)
        usersList.append(user2)
        usersList.append(user1)
        usersList.append(user2)
        usersList.append(user1)
    }
    
    var getNumberOfUsers: Int {
        return usersList.count
    }
    
    func getUser(at index: IndexPath) -> User {
        return usersList[index.item]
    }

    
    
}
