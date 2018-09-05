//
//  HomeController.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 04/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Do stuff here
    }

}

//MARK: - CollectionView DataSource Methods
extension HomeController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  UICollectionView.customCellID , for: indexPath)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let customHeaderOrFooterID: String?
        
        if kind == UICollectionElementKindSectionHeader {
            customHeaderOrFooterID = UICollectionView.customHeaderID
        } else {
            customHeaderOrFooterID = UICollectionView.customFooterID
        }
        
        let supplementaryReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: customHeaderOrFooterID!, for: indexPath)
        
        return supplementaryReusableView
    }
}

//MARK: - CollectionView Delegate Methods
extension HomeController {
    
}

//MARK: - CollectionView Delegate Flow Layout
extension HomeController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}

