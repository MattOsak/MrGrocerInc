//
//  ViewController.swift
//  MrGrocerInc
//
//  Created by Matt Osak on 2018-01-10.
//  Copyright © 2018 Matt Osak. All rights reserved.
//

import UIKit

class MainGrocerVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var grocerTableView: UITableView!
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grocerTableView.dataSource = self
        grocerTableView.delegate = self
    }

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMenuCagegory().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "GrocerCell") as? GrocerCell {
            let menuCategory = DataService.instance.getMenuCagegory()[indexPath.row]
            cell.updteViews(menuCategory: menuCategory)
            return cell
        } else {
            return GrocerCell()
        }
        
    }
}

