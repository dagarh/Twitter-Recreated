//
//  HomeControllerCollectionViewFooter.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewFooter: UICollectionReusableView {
    
    
    @IBOutlet private weak var footerLabel: UILabelX!
    
    var footer: String? {
        didSet {
            if let footer = footer {
                footerLabel.text = footer
            }
        }
    }
}
