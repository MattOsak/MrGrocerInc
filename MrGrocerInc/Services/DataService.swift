//
//  DataService.swift
//  MrGrocerInc
//
//  Created by Matt Osak on 2018-01-11.
//  Copyright © 2018 Matt Osak. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let menuCategories = [
        MenuCategory(menuCategoryTitle: "Appetizers & Party Platters"), MenuCategory(menuCategoryTitle: "Breakfast & Brunch"), MenuCategory(menuCategoryTitle: "Soups & Salads"), MenuCategory(menuCategoryTitle: "Desserts & Cakes")]
    
    
    private let AP = [
    MenuItem(title: "Crudites Platter", price: "$32.99", imageName: "AP1.png"),    MenuItem(title: "Signature Spreads", price: "$32.99", imageName: "AP2.png"),    MenuItem(title: "Mediterranean Platter", price: "$59.99", imageName: "AP3.png"),
    MenuItem(title: "Indian Platter", price: "$69.99", imageName: "AP4.png"),    MenuItem(title: "Antipasto Platter", price: "$69.99", imageName: "AP5.png"),    MenuItem(title: "Chilled Salmon Medallions", price: "$119.99", imageName: "AP6.png"), MenuItem(title: "Roasted Beef Tenderloin Platter", price: "$199.99", imageName: "AP7.png"),  MenuItem(title: "Roasted London Broil Platter", price: "$119.00", imageName: "AP8.png"),     MenuItem(title: "Skewers: Teriyaki Chicken", price: "$29.99", imageName: "AP9.png"), MenuItem(title: "Skewers: Thai Peanut Chicken", price: "$29.99", imageName: "AP10.png"),     MenuItem(title: "Crostini: Prosciutto with Olive Tapenade", price: "$19.99", imageName: "AP11.png"),     MenuItem(title: "Pakoras", price: "$16.99", imageName: "AP12.png"),     MenuItem(title: "Gruyere & Spinach Stuffed Mushrooms", price: "$18.99", imageName: "AP13.png"),     MenuItem(title: "Chicken Tenders", price: "$22.99", imageName: "AP14.png"),    MenuItem(title: "Eggplant Arugula Rolls", price: "$19.99", imageName: "AP15.png")    ]
    
    
    private let BB = [
    MenuItem(title: "Breakfast Pastry Platter", price: "$29.99", imageName: "BB1.png"),
    MenuItem(title: "Seasonal Fruit Platter", price: "$49.99", imageName: "BB2.png"),
    MenuItem(title: "Bagel Box", price: "$29.99", imageName: "BB3.png"),
    MenuItem(title: "Smoked Salmon Platter", price: "$79.99", imageName: "BB4.png"),
    MenuItem(title: "Creme Brulee French Toast", price: "$49.99", imageName: "BB5.png"),
    MenuItem(title: "Morning Yogurt Parfait Bowl", price: "$59.99", imageName: "BB6.png"),
    MenuItem(title: "Oatmeal Kit", price: "$39.99", imageName: "BB6.png"),
    MenuItem(title: "Quiche: Asparagus & Leek", price: "$15.99", imageName: "BB7.png"),
    MenuItem(title: "Seasonal Fruit Platter", price: "$29.99", imageName: "BB8.png"),
    MenuItem(title: "Smoked Salmon Platter", price: "$29.99", imageName: "BB9.png")]
    
    private let DC = [
        MenuItem(title: "Afternoon Tea Platter", price: "$29.99", imageName: "DC1.png"),
        MenuItem(title: "Cookie & Bar Platter", price: "$49.99", imageName: "DC2.png"),
        MenuItem(title: "Mini Cupcake Platter", price: "$39.99", imageName: "DC3.png"),
        MenuItem(title: "Mini Pastry Platter", price: "$59.99", imageName: "DC4.png") ]
    
    private let SS = [
        MenuItem(title: "Asian Edamame Salad", price: "$24.99", imageName: "SS1.png"),
        MenuItem(title: "Caesar Salad", price: "$29.99", imageName: "SS2.png"),
        MenuItem(title: "Garden Salad", price: "$21.99", imageName: "SS3.png"),
        MenuItem(title: "Grilled Chicken Cobb Salad", price: "$26.99", imageName: "SS4.png"),
        MenuItem(title: "Pecan & Feta Salad", price: "$26.99", imageName: "SS5.png"),
        MenuItem(title: "Mozzarella, Basil & Tomato", price: "$24.99", imageName: "SS6.png"),
        MenuItem(title: "Rainbow Salad", price: "$24.99", imageName: "SS7.png"),
        MenuItem(title: "Whole Foods Market Salad", price: "$29.99", imageName: "SS8.png") ]
    
    func getMenuCagegory() -> [MenuCategory] {
        return menuCategories
        
    }
    
    
    func getMenuItems(forMenuItemTitle title: String ) -> [MenuItem] {
        
        switch title {
        case "Appetizers & Party Platters" :
            return getAP()
        case "Breakfast & Brunch" :
            return getBB()
        case "Soups & Salads" :
            return getDC()
        case "Desserts & Cakes" :
            return getSS()
        default:
            return getAP()
        }
    }
    
    
    
    func getAP() -> [MenuItem] {
        return AP
    }

    func getBB() -> [MenuItem] {
        return BB
    }

    func getDC() -> [MenuItem] {
        return DC
    }
    func getSS() -> [MenuItem] {
        return SS
    }

}
