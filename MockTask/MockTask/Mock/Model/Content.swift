//
//  Content.swift
//  MockTask
//
//  Created by Laith Ayyat on 3/12/19.
//  Copyright © 2019 Laith Ayyat. All rights reserved.
//


import UIKit
struct MockDescription:Decodable{
    let content:[MockProperties]
    
}
struct MockProperties:Decodable{
    let id: Int
    let name: String?
    let ipAddress: String?
    let ipSubnetMask: String?
    
    let locationId: Int
    
    let serialNumber: String?
    // let version: String?
    
    let location: Int
    let serialNum: String?
    
}
