//
//  TestViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/5/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class TestViewController: ChildViewController {

    var testLabel : UILabel!
    var textToDisplay:String?
    
    var isNew = true
    
    var button : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isNew {
            viewNavigationBar(false, title: "Add an Address")
        } else {
            viewNavigationBar(false, title: "Edit Address")
        }
        
        testLabel = UILabel()
        if let text = textToDisplay {
            testLabel.text = text
        }
        testLabel.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_40)
        testLabel.textColor = Color.GREY_DARK_1
        testLabel.frame = CGRectMake(20, 100, Global.WIDTH, 50)
        view.addSubview(testLabel)
        
        button = UIButton()
        button.setTitle("Tampil Halaman 3", forState: .Normal)
        button.frame = CGRectMake(20, testLabel.frame.maxY + 50, Global.WIDTH - 40, 50)
        button.backgroundColor  = Color.RED
        button.addTarget(self, action: "closeAction:", forControlEvents: .TouchUpInside)
        view.addSubview(button)
        
    }
    
    func closeAction(button: UIButton) {
        let vc = SatuViewController()
        self.showViewControllerWith(vc, usingAnimation: AnimationType.ANIMATE_LEFT)
        
    }

}
