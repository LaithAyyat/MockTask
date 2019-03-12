//
//  MockTableCell.swift
//  MockTask
//
//  Created by Laith Ayyat on 3/12/19.
//  Copyright © 2019 Laith Ayyat. All rights reserved.
//

import UIKit

class MockTableCell: UITableViewCell {
    @IBOutlet weak var countryimage: UIImageView!
    
    @IBOutlet weak var countryname: UILabel!
    
    @IBOutlet weak var basename: UILabel!
    @IBOutlet weak var mockIPAddress: UILabel!
    
    @IBOutlet weak var mockIPSubnetMask: UILabel!
    
    func setMock(mocks: MockProp) {
        countryimage.layer.cornerRadius = countryimage.frame.size.width/2
        countryimage.clipsToBounds = true
        countryimage.image = mocks.image
        countryname.text = mocks.countryname
        basename.text = mocks.name
        mockIPAddress.text = mocks.IPAddress
        mockIPSubnetMask.text = mocks.IPSubnetMask
    }
    
    
}
