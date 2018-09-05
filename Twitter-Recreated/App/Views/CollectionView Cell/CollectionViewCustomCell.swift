//
//  CollectionViewCustomCell.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class CollectionViewCustomCell: UICollectionViewCell {
    
    
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    @IBOutlet private weak var usernameLabel: UILabel!
    
    @IBOutlet private weak var bioTextView: UITextView!
    
    
    @IBOutlet weak var followButton: UIButton!
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var user: User? {
        didSet {
            if let user = user {
                nameLabel.text = user.name
            }
        }
    }
    
}
