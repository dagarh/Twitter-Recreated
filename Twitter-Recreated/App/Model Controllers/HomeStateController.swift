//
//  UsersData.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

class HomeStateController {
    private(set) var usersList: [User]
    private(set) var tweetList: [Tweet]
    
    init() {
        usersList = [User]()
        tweetList = [Tweet]()
        loadInitialInfo()
    }
    
    func loadInitialInfo() {
        let user1 = User(profilePicName: "Himanshu Dagar", name: "Himanshu Dagar", username: "hdagar3", bioText: "Hi my name is Himanshu Dagar. I want to get into iOS development. I am very passionate about coding and all these stuff. This is just a random stuff to check few things. I want to fill it with complete text. Let's check whether it is working or not. Based on this I will tell you lot of things later on.")
        
        let user2 = User(profilePicName: "Prince Bharti", name: "Prince Bharti", username: "bharti3", bioText: "Bharti is prince bharti. He is my friend and we are currently working in iOS together. But he is my best friend. You would always be my best friend. ")
        
        let user3 = User(profilePicName: "Brain Voong", name: "Brain Voong", username: "thatsbuildthatapp", bioText: "This is instructor of twitter course. I don't know why he always follow the coding style rather than using storyboards. He might have to deal with lot of issues because of that. But I always prefer to start with the storyboard and then later on when having few of the issues then always try to write code for that part. So never hesitate regardign that. Prince is always there to help regardign iOS. Just continue making apps and you will acieve success one day. I know this is long post which I am writing but I will follow this up with my style. And I will finish this in my style. ")
        
        usersList.append(user1)
        usersList.append(user2)
        usersList.append(user3)
        usersList.append(user1)
        usersList.append(user2)
        usersList.append(user3)
        
        let tweet1 = Tweet(user: user1, message: "This is the tweet by me i.e himanshu dagar. I want things to happen in real time. So if you want to grow like others then do it fast.")
        let tweet2 = Tweet(user: user2, message: "This is prince bharti. He is so passionate about iOS development. he is my best friend. This is going to be very very odd thing for me because it is too long. So now what are you deciding on. I want to test this thing today. If you let me test this today then it is completely fine but if you are doing it on sundays then it is not fine. Let's see how this behaves. Now I want my things to happen properly. So let's run it now.")
        
        tweetList.append(tweet1)
        tweetList.append(tweet2)
    }
}
