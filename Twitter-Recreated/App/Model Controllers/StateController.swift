//
//  UsersData.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

class StateController {
    
    private var usersList: [User]?
    
    init() {
        usersList = [User]()
        loadInitialUsers()
    }
    
    func loadInitialUsers() {
        usersList?.append(User(name: "Himanshu"))
        usersList?.append(User(name: "Deepanshu"))
        usersList?.append(User(name: "Prince"))
        usersList?.append(User(name: "Sumit"))
        usersList?.append(User(name: "Aakash"))
    }
    
    var getNumberOfUsers: Int {
        return usersList!.count
    }
    
    func getUser(at index: IndexPath) -> User {
        return usersList![index.item]
    }

    
    
}
