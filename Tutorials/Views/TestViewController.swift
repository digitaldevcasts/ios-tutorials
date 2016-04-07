//
//  TestViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit
import EasyTransition

class TestViewController: ChildViewController {
    
    var transition: EasyTransition?
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        button.backgroundColor = Color.WHITE
        button.setTitle("Test", forState: .Normal)
        button.setTitleColor(Color.BLACK, forState: .Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
        
        view.addSubview(button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRectMake(20, 100, Global.WIDTH - 40, 50)
    }
    
    func buttonAction(button: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
        print("Test")
    }

}
