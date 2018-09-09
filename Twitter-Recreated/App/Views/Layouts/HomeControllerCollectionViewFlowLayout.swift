//
//  HomeControllerCollectionViewFlowLayout.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        super.prepare()
        
        estimatedItemSize = CGSize(width: (collectionView?.frame.width)!, height: 250.0)
    }
    
}
