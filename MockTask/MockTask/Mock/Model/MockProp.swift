//
//  MockProp.swift
//  MockTask
//
//  Created by Laith Ayyat on 3/12/19.
//  Copyright © 2019 Laith Ayyat. All rights reserved.
//

import Foundation
import UIKit

class MockProp {
    
    var image: UIImage
    var countryname: String
    var name: String
    var IPAddress: String
    var IPSubnetMask: String
    
    init(image: UIImage, countryname: String, name: String, IPAddress: String, IPSubnetMask: String) {
        self.image = image
        self.countryname = countryname
        self.name = name
        self.IPAddress = IPAddress
        self.IPSubnetMask = IPSubnetMask
    }
}
