//
//  NavigationBar+clear.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 16/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func clear() {
        shadowImage = UIImage()
        setBackgroundImage(UIImage(), for: .default)
        backgroundColor = .clear
    }
}
