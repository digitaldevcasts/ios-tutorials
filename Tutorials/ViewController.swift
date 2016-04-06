//
//  ViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class ViewController: ChildViewController {
    
    var isNew = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isNew {
            viewNavigationBar(false, title: "Add an Address")
        } else {
            viewNavigationBar(false, title: "Edit Address")
        }
        
        view.backgroundColor = Color.BLUE_LIGHT_3
        
        let arrayOfVillains = ["santa", "bugs", "superman", "batman", "Asd", "asdasd", "asdasdas"]
        
        var buttonY: CGFloat = 84
        for villain in arrayOfVillains {
            
            
            let villainButton = UIButton(frame: CGRect(x: 20, y: buttonY, width: Global.WIDTH - 40, height: 50))
            buttonY = buttonY + 70  // we are going to space these UIButtons 50px apart
            
            villainButton.layer.cornerRadius = 0  // get some fancy pantsy rounding
            villainButton.backgroundColor = UIColor.darkGrayColor()
            villainButton.setTitle("\(villain)", forState: UIControlState.Normal)
            villainButton.titleLabel!.text = "\(villain)"
            villainButton.addTarget(self, action: "villainButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(villainButton)  // myView in this case is the view you want these buttons added
        }
    }
    
    func villainButtonPressed(button:UIButton) {
        
        if button.titleLabel!.text != nil {
            let vc = TestViewController()
            vc.textToDisplay = button.titleLabel!.text!
            self.showViewControllerWith(vc, usingAnimation: AnimationType.ANIMATE_LEFT)
            
        } else {
            
            print("Nowhere to go :/")
            
        }
        
    }
    
}

