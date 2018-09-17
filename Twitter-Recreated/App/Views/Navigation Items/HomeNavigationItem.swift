//
//  HomeNavigationItem.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 16/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

@IBDesignable
class HomeNavigationItem: UINavigationItem {
    
    @IBInspectable var titleImage: UIImage? {
        didSet {
            if let titleImage = titleImage {
                let titleImageView = UIImageViewX(image: titleImage)
                titleImageView.frame.size = CGSize(width: titleImageWidth, height: titleImageHeight)
                titleImageView.contentMode = .scaleAspectFit
                titleView = titleImageView
            }
        }
    }
    
    @IBInspectable var titleImageWidth: CGFloat = 25.0 {
        didSet {
            if let titleView = titleView {
                titleView.frame.size.width = titleImageWidth
            }
        }
    }
    
    @IBInspectable var titleImageHeight: CGFloat = 25.0 {
        didSet {
            if let titleView = titleView {
                titleView.frame.size.height = titleImageHeight
            }
        }
    }
    
    
    
    
    
}
