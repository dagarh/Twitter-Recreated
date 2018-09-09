//
//  HomeControllerCollectionViewHeader.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewHeader: UICollectionReusableView {
    
    @IBOutlet private weak var headerLabel: UILabelX!
    
    var header: String? {
        didSet {
            if let header = header {
                headerLabel.text = header
            }
        }
    }
    
}
