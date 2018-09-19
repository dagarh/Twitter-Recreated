//
//  NetworkServiceController.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 18/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

class HomeNetworkServiceController {
    
    static let shared = HomeNetworkServiceController()
    
    private init() {
        // could specify properties related to the instance
    }
    
    private let APIUrl: URL? = {
        let url = URL(string: "https://api.letsbuildthatapp.com/twitter/home")
        return url
    }()
    
    func fetchHomeFeed(with completionHandler: @escaping ((HomeUsersAndTweets?) -> Void)) {
        let sharedSession = URLSession.shared
        
        guard let apiUrl = APIUrl else {
            completionHandler(nil)
            return
        }
        
        let dataTask = sharedSession.dataTask(with: apiUrl) { (data, response, error) -> Void in
            
            if let error = error {
                print("Client side error: \(error.localizedDescription)")
                completionHandler(nil)
                return
            }
            
            guard let data = data, let response = response as? HTTPURLResponse,
                response.statusCode.statusCodeSuccess else {
                    print("No data found, Server side issue :(")
                    completionHandler(nil)
                    return
            }
            
            let jsonDecoder = JSONDecoder()
            do {
                let homeUsersAndTweets = try jsonDecoder.decode(HomeUsersAndTweets.self, from: data)
                completionHandler(homeUsersAndTweets)
            } catch let err as NSError {
                print("Error while decoding data \(err.localizedDescription)")
                completionHandler(nil)
            }
        }
        
        dataTask.resume()
    }
}
