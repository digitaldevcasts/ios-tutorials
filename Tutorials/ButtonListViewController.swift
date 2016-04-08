//
//  ButtonListViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/7/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class ButtonListViewController: ChildViewController {

//    var arrayOfVillains = ["santa", "bugs", "superman", "batman"]
    var songs = ["Satu", "Dua", "Tiga"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewNavigationBar(false, title: "Button List")
        var buttonY: CGFloat = 64 + 20
        for song in songs {
            if song == "Satu" {
                let villainButton = UIButton()
                
                villainButton.frame = CGRect(x: Global.WIDTH / 2 + 20, y: buttonY, width: Global.WIDTH / 2 - 40, height: 30)
                buttonY = buttonY + 50
                
                villainButton.layer.cornerRadius = 0
                villainButton.backgroundColor = UIColor.darkGrayColor()
                villainButton.setTitle("\(song)", forState: UIControlState.Normal)
                villainButton.titleLabel?.text = "\(song)"
                villainButton.addTarget(self, action: "villainButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
                
                self.view.addSubview(villainButton)
            } else {
                let villainButton = UIButton()
                
                villainButton.frame = CGRect(x: 20, y: buttonY, width: Global.WIDTH / 2 - 40, height: 30)
                buttonY = buttonY + 50
                
                villainButton.layer.cornerRadius = 0
                villainButton.backgroundColor = UIColor.darkGrayColor()
                villainButton.setTitle("\(song)", forState: UIControlState.Normal)
                villainButton.titleLabel?.text = "\(song)"
                villainButton.addTarget(self, action: "villainButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
                
                self.view.addSubview(villainButton)
            }
        }
    
        view.addSubview(navigationBar)
    }
    
    func villainButtonPressed(sender:UIButton!) {
        
        if sender.titleLabel?.text != nil {
            print("\(sender.titleLabel!.text!)")
        } else {
            print("Nowhere to go :/")
        }
        
    }

}
