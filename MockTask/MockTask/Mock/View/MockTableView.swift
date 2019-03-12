//
//  MockTableView.swift
//  MockTask
//
//  Created by Laith Ayyat on 3/12/19.
//  Copyright © 2019 Laith Ayyat. All rights reserved.
//

import UIKit

class MockTableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var mockarray: [MockProp] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mockarray = createArray()
    
        let classobject = JSONAPIReturn()
        classobject.JSONAPILoad()
    
    
    }
    
    
    func createArray() -> [MockProp] {
        
        let mock1 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Brasil", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock2 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Brasil", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock3 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Brasil", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock4 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Brasil", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock5 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Argentina", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock6 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Argentina", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock7 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Argentina", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock8 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Argentina", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock9 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Argentina", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        let mock10 = MockProp(image: #imageLiteral(resourceName: "brasil"), countryname: "Argentina", name: "BRSANBCM01", IPAddress: "10.75.0.1", IPSubnetMask: "255.255.255.0")
        
        
        return [mock1, mock2, mock3, mock4, mock5, mock6, mock7, mock8, mock9, mock10]
    }
    
 

}

extension MockTableView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockarray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mockresult = mockarray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! MockTableCell
        cell.setMock(mocks: mockresult)
        
        return cell
    }
}
