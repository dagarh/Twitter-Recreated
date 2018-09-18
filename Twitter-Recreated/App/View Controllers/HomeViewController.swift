//
//  HomeViewController.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 04/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    let stateController = HomeStateController()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Do stuff here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        collectionViewFlowLayoutSetup(with: (collectionView?.frame.width)!)
        loadHomeData()
    }
    
    fileprivate func loadHomeData() {
        stateController.loadData { (homeUsersAndTweets) in
            DispatchQueue.main.async {
                guard let users = homeUsersAndTweets?.usersList else { return }
                guard let tweets = homeUsersAndTweets?.tweetsList else { return }
                
                self.stateController.homeUsersAndTweets?.usersList = users
                self.stateController.homeUsersAndTweets?.tweetsList = tweets
                self.collectionView?.reloadData()
            }
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView?.collectionViewLayout.invalidateLayout()
        collectionViewFlowLayoutSetup(with: size.width)
    }
    
    fileprivate func collectionViewFlowLayoutSetup(with width: CGFloat) {
        if let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: width, height: 400)
        }
    }
}

//MARK: - CollectionView DataSource Methods
extension HomeViewController {
    
    /* All of this hard coding could be removed latter. As of now think it as a hack. */
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let noOfItems = section == 0 ? (stateController.homeUsersAndTweets?.usersList?.count ?? 0) : (stateController.homeUsersAndTweets?.tweetsList?.count ?? 0)
        return noOfItems
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            guard let userCell = collectionView.dequeueReusableCell(withReuseIdentifier:  UICollectionView.homeUserCell , for: indexPath) as? HomeControllerCollectionViewUserCell else {
                return UICollectionViewCell()
            }
            
            userCell.user = stateController.homeUsersAndTweets?.usersList?[indexPath.item]
            
            return userCell
        } else {
            guard let tweetCell = collectionView.dequeueReusableCell(withReuseIdentifier: UICollectionView.homeTweetCell, for: indexPath) as? HomeControllerCollectionViewTweetCell else {
                return UICollectionViewCell()
            }
        
            tweetCell.tweet = stateController.homeUsersAndTweets?.tweetsList?[indexPath.item]
            
            return tweetCell
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader {
            // collection view header
            guard let supplementaryReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: UICollectionView.homeHeader, for: indexPath) as? HomeControllerCollectionViewHeader else {
                return UICollectionReusableView()
            }
            
            supplementaryReusableView.header = "WHO TO FOLLOW"
            
            return supplementaryReusableView
            
        } else {
            // collection view footer
            guard let supplementaryReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: UICollectionView.homeFooter, for: indexPath) as? HomeControllerCollectionViewFooter else {
                return UICollectionReusableView()
            }
            
            supplementaryReusableView.footer = "Show me more"
            
            return supplementaryReusableView
        }
    }
}

//MARK: - CollectionView Delegate Methods
extension HomeViewController {
    
}

//MARK: - CollectionView Delegate Flow Layout
extension HomeViewController : UICollectionViewDelegateFlowLayout {
    
    /* We could drop this method if we are enabling the auto resizing.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 150)
    } */
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let headerSize = section == 0 ? CGSize(width: collectionView.frame.width, height: 40) : .zero
        
        return headerSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        let footerSize = section == 0 ? CGSize(width: collectionView.frame.width, height: 40) : .zero
        
        return footerSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let edgeInset = section == 0 ? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) : UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        
        return edgeInset
    }
    
    // This is the space horizontally.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // This is the space vertically.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

