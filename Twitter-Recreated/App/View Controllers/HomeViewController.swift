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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Do stuff here
    }

}

//MARK: - CollectionView DataSource Methods
extension HomeViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stateController.getNumberOfUsers
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  UICollectionView.homeCellID , for: indexPath) as! HomeControllerCollectionViewCell
     
        cell.user = stateController.getUser(at: indexPath)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader {
            // collection view header
            let supplementaryReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: UICollectionView.homeHeaderID, for: indexPath) as! HomeControllerCollectionViewHeader
            supplementaryReusableView.header = "WHO TO FOLLOW"
            return supplementaryReusableView
        } else {
            // collection view footer
            let supplementaryReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: UICollectionView.homeFooterID, for: indexPath) as! HomeControllerCollectionViewFooter
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 15, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    // This is the space horizontally.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // This is the space vertically.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

