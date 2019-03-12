//
//  JSONAPIReturn.swift
//  MockTask
//
//  Created by Laith Ayyat on 3/12/19.
//  Copyright © 2019 Laith Ayyat. All rights reserved.
//

import UIKit

class JSONAPIReturn: UIViewController {

    func JSONAPILoad()
    {
        let jsonUrlString = "http://www.mocky.io/v2/5c5c46f13900005a18e05b90"
        
        guard let url = URL(string:jsonUrlString)else{return}
        
        URLSession.shared.dataTask(with: url){(data,response,err) in
            
            guard let data = data else{return}
            
            do{
                
                let jsonresult = try JSONDecoder().decode(MockDescription.self, from: data)
                print(jsonresult.content)
                
            }catch let jsonErr
            {
                
                print("Error serializing json", jsonErr)
                
            }
            }.resume()
    }

}
