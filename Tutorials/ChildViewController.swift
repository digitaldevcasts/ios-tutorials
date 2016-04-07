//
//  ChildViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/6/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class ChildViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareView()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        navigationBar.frame = CGRectMake(0, 0, Global.WIDTH, 64)
        searchText.frame = CGRectMake(0, 0, Global.WIDTH - (3 * NavigationItems.ITEM_SIZE + Space.SPACE_ITEM_TO_ITEM * 3 + Space.SPACE_ITEM_TO_SCREEN * 2), 30)
        menuButton.frame = CGRectMake(0, 0, NavigationItems.ITEM_WIDTH, NavigationItems.ITEM_HEIGHT)
        cartButton.frame = CGRectMake(0, 0, NavigationItems.ITEM_WIDTH, NavigationItems.ITEM_HEIGHT)
        closeButton.frame = CGRectMake(0, 0, NavigationItems.ITEM_WIDTH, NavigationItems.ITEM_HEIGHT)
        searchButton.frame = CGRectMake(0, 0, NavigationItems.ITEM_WIDTH, NavigationItems.ITEM_HEIGHT)
        cancelButton.frame = CGRectMake(0, 0, 50, 30)
        doneButton.frame = CGRectMake(0, 0, 50, 30)
        
    }
    
    private func prepareView() {
        
        view.backgroundColor = Color.BLUE_LIGHT_3
    }
    
    func btn_clicked(sender: UIBarButtonItem) {
        print("ok")
    }
    
    func viewNavigationBar(showBack:Bool = true, title:String = "Watsons") {
        
        navigationBar.backgroundColor = Color.WHITE
        navigationBar.delegate = self
        
        let navigationItem = UINavigationItem()
        
        let barcodeImage: UIImage? = UIImage(named: "Barcode")
        barcodeButton.frame = CGRectMake(0, 0, 35, 30)
        barcodeButton.setImage(barcodeImage, forState: .Normal)
        barcodeButton.setImage(barcodeImage, forState: .Highlighted)
        let clearImage: UIImage? = UIImage(named: "Close Grey")
        clearButton.frame = CGRectMake(0, 0, 30, 30)
        clearButton.setImage(clearImage, forState: .Normal)
        clearButton.setImage(clearImage, forState: .Highlighted)
        searchText.leftView = barcodeButton
        searchText.leftViewMode = .Always
        searchText.rightView = clearButton
        searchText.rightViewMode = .Always
        searchText.placeholder = "Search"
        searchText.backgroundColor = Color.WHITE
        searchText.font = UIFont(name: FontType.R_LIGHT, size: FontSize.FONT_14)
        searchText.textColor = Color.GREY_DARK_3
        searchText.layer.borderWidth = 1
        searchText.layer.borderColor = Color.BLUE_LIGHT_2.CGColor
        searchText.layer.cornerRadius = 3
        let searchTextItem = UIBarButtonItem()
        searchTextItem.customView = searchText
        
        let menuImage: UIImage? = UIImage(named: "Menu")
        menuButton.setImage(menuImage, forState: .Normal)
        menuButton.setImage(menuImage, forState: .Highlighted)
        menuButton.addTarget(self, action: Selector("action1:"), forControlEvents: .TouchUpInside)
        let menuItem = UIBarButtonItem()
        menuItem.customView = menuButton
        
        let closeImage: UIImage? = UIImage(named: "Close")
        closeButton.setImage(closeImage, forState: .Normal)
        closeButton.setImage(closeImage, forState: .Highlighted)
        closeButton.addTarget(self, action: Selector("action2:"), forControlEvents: .TouchUpInside)
        let closeItem = UIBarButtonItem()
        closeItem.customView = closeButton
        
        let searchImage: UIImage? = UIImage(named: "Search")
        searchButton.setImage(searchImage, forState: .Normal)
        searchButton.setImage(searchImage, forState: .Highlighted)
        searchButton.addTarget(self, action: Selector("action2:"), forControlEvents: .TouchUpInside)
        let searchItem = UIBarButtonItem()
        searchItem.customView = searchButton
        
        let cartImage: UIImage? = UIImage(named: "Cart icon passive")
        cartButton.setImage(cartImage, forState: .Normal)
        cartButton.setImage(cartImage, forState: .Highlighted)
        cartButton.addTarget(self, action: Selector("action2:"), forControlEvents: .TouchUpInside)
        let cartItem = UIBarButtonItem()
        cartItem.customView = cartButton
        
        cancelButton.titleLabel!.font  = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_11)
        cancelButton.setTitleColor(Color.GREY_DARK_3, forState: .Normal)
        cancelButton.setTitle("Cancel", forState: .Normal)
        cancelButton.addTarget(self, action: Selector("action1:"), forControlEvents: .TouchUpInside)
        let cancelItem = UIBarButtonItem()
        cancelItem.customView = cancelButton
        
        doneButton.titleLabel!.font  = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_11)
        doneButton.setTitleColor(Color.GREY_DARK_3, forState: .Normal)
        doneButton.setTitle("Done", forState: .Normal)
        doneButton.addTarget(self, action: Selector("action1:"), forControlEvents: .TouchUpInside)
        let doneItem = UIBarButtonItem()
        doneItem.customView = doneButton
        
        let attrs = [
            NSForegroundColorAttributeName : Color.GREY_DARK_3,
            NSFontAttributeName : UIFont(name: FontType.R_BOLD, size: FontSize.FONT_18)!
        ]
        
        UINavigationBar.appearance().titleTextAttributes = attrs
        UINavigationBar.appearance().barTintColor = Color.WHITE
        
        navigationItem.title = title
        
        if showBack {
            navigationItem.rightBarButtonItems = [cartItem, menuItem]
            navigationItem.leftBarButtonItems = [searchItem, searchTextItem]
        } else {
            navigationItem.rightBarButtonItems = [doneItem]
            navigationItem.leftBarButtonItems = [cancelItem]
        }
        
        navigationBar.items = [navigationItem]
        
    }
    
}
