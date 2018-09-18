//
//  Int+StatusCode.swift
//  Twitter-Recreated
//
//  Created by Himanshu Dagar on 18/09/18.
//  Copyright © 2018 Himanshu Dagar. All rights reserved.
//

import Foundation

extension Int {
    // represent that request was successful or not from server side
    var statusCodeSuccess: Bool {
        return self >= 200 && self < 300
    }
}
