//
//  DuaViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/5/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class DuaViewController: ChildViewController {
    
    var testLabel : UILabel!
    var textToDisplay:String?
    
    var button : UIButton!
    var button1 : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel = UILabel()
        if let text = textToDisplay {
            testLabel.text = text
        }
        testLabel.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_40)
        testLabel.textColor = Color.GREY_DARK_1
        testLabel.frame = CGRectMake(20, 100, Global.WIDTH, 50)
        view.addSubview(testLabel)
        
        button = UIButton()
        button.setTitle("Dismis Modal", forState: .Normal)
        button.frame = CGRectMake(20, testLabel.frame.maxY + 50, Global.WIDTH - 40, 50)
        button.backgroundColor  = Color.GREY_DARK_3
        button.addTarget(self, action: "closeAction:", forControlEvents: .TouchUpInside)
        view.addSubview(button)
        
        button1 = UIButton()
        button1.setTitle("Pindah Halaman 1", forState: .Normal)
        button1.frame = CGRectMake(20, testLabel.frame.maxY + 150, Global.WIDTH - 40, 50)
        button1.backgroundColor  = Color.RED
        button1.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
        view.addSubview(button1)
        
    }
    
    func closeAction(button: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func buttonAction(button: UIButton) {
        dismissViewControllerAnimated(false, completion: nil)
        let vc = ViewController()
        self.showViewControllerWith(vc, usingAnimation: AnimationType.ANIMATE_RIGHT)
        
    }
    
}