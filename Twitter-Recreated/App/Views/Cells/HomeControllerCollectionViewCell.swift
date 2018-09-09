//
//  HomeControllerCollectionViewCell.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var profileImageView: UIImageViewX!
    @IBOutlet private weak var nameLabel: UILabelX!
    @IBOutlet private weak var usernameLabel: UILabelX!
    @IBOutlet private weak var bioTextView: UITextView!
    
    @IBOutlet private weak var followButton: UIButtonX!
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var user: User? {
        didSet {
            if let user = user {
                nameLabel.text = user.name
                usernameLabel.text = "@\(user.username)"
                profileImageView.image = UIImage(named: user.profilePicName)
                bioTextView.text = user.bioText
            }
        }
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        
        layoutAttributes.size.height = ceil(size.height)
        
        return layoutAttributes
    }
    
}
