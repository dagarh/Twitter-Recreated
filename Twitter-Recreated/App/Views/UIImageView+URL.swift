//
//  UIImageView+URL.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 19/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

extension UIImageView {
    
    // To load the imageView with the image at given url.
    var url: String {
        get {
            return ""
        }
        set {
            let sharedSession = URLSession.shared
            
            guard let imageURLComponents = URLComponents(string: url) else {
                return
            }
            
            // Here you could provide caching mechanism using NSCache class if you want. If you don't provide then it would be bad thing because whenever you are scrolling, you are making this network call for loading images again and again. So caching would be a good way.
            let dataTask = sharedSession.dataTask(with: imageURLComponents.url!) { (data, response, error) -> Void in
                if let error = error {
                    print("Client side error while loading image: \(error.localizedDescription)")
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse,
                    response.statusCode.statusCodeSuccess else {
                        print("No image found, Server side issue :(")
                        return
                }
                
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
            
            dataTask.resume()
        }
    }
}
