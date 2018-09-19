//
//  HomeControllerCollectionViewTweetCell.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 16/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewTweetCell: UICollectionViewCell {
    
    @IBOutlet private weak var profilePicture: UIImageViewX!
    @IBOutlet private weak var tweetTextView: UITextView!
    
    var tweet: Tweet? {
        didSet {
            if let tweet = tweet {
                guard let user = tweet.user else { return }
                guard let message = tweet.message else { return }
                
                profilePicture.url = user.profilePicName
                
                let attributedText = NSMutableAttributedString(string: user.name, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
                
                let userName = "  \(user.userName)\n"
                attributedText.append(NSAttributedString(string: userName, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15), NSAttributedStringKey.foregroundColor: UIColor.gray]))
                
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = 4
                let range = NSMakeRange(0, attributedText.string.count)
                attributedText.addAttribute(.paragraphStyle, value: paragraphStyle, range: range)
                
                attributedText.append(NSAttributedString(string: message, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 15)]))
                
                tweetTextView.attributedText = attributedText
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
