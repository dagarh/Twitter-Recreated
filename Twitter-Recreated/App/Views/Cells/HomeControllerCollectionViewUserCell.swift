//
//  HomeControllerCollectionViewUserCell.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 05/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewUserCell: UICollectionViewCell {
    
    @IBOutlet private weak var profileImageView: UIImageViewX!
    @IBOutlet private weak var nameLabel: UILabelX!
    @IBOutlet private weak var usernameLabel: UILabelX!
    @IBOutlet private weak var bioTextView: UITextView!
    
    @IBOutlet private weak var followButton: UIButtonX!
    
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
        // Toggle the magic that is Auto Layout
        setNeedsLayout()
        layoutIfNeeded()
        
        // Tries to fit contentView to the target size in layoutAttributes.
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        
        // Update layoutAttributes with height that was just calculated.
        layoutAttributes.size.height = ceil(size.height)
        
        return layoutAttributes
    }
}
