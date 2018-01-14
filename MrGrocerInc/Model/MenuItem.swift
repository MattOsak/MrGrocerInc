//
//  MenuItem.swift
//  MrGrocerInc
//
//  Created by Matt Osak on 2018-01-11.
//  Copyright © 2018 Matt Osak. All rights reserved.
//

import Foundation

struct MenuItem {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String ) {
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
}
