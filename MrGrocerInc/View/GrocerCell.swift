//
//  GrocerCell.swift
//  MrGrocerInc
//
//  Created by Matt Osak on 2018-01-10.
//  Copyright © 2018 Matt Osak. All rights reserved.
//

import UIKit

class GrocerCell: UITableViewCell {

   
    @IBOutlet weak var menuCategoryTitle: UILabel!
    
    func updteViews(menuCategory: MenuCategory) {
       menuCategoryTitle.text = menuCategory.menuCategoryTitle
        
    }

}
