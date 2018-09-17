//
//  HomeViewController+Navbar.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 16/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

extension HomeViewController {
    
    func setupNavigationBar() {
        
        /* This could also be used to hide navigationBar line : self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow") */
        
        /* This is required in order to have clear color behavior to the navigation bar of navigation controller. */
        // navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        /* In order to get rid of the shadow image in navigation bar which is a line by default. */
        navigationController?.navigationBar.shadowImage = UIImage()
    }
}
