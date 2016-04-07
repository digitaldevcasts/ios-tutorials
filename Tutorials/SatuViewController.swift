//
//  SatuViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/5/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit
import EasyTransition

class SatuViewController: ChildViewController {
    
    var transition: EasyTransition?
    
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
        button.setTitle("Tampil Modal", forState: .Normal)
        button.frame = CGRectMake(20, testLabel.frame.maxY + 50, Global.WIDTH - 40, 50)
        button.backgroundColor  = Color.GREY_DARK_3
        button.addTarget(self, action: "closeAction:", forControlEvents: .TouchUpInside)
        view.addSubview(button)
        
        button1 = UIButton()
        button1.setTitle("Pindah halaman 1", forState: .Normal)
        button1.frame = CGRectMake(20, testLabel.frame.maxY + 150, Global.WIDTH - 40, 50)
        button1.backgroundColor  = Color.GREY_DARK_3
        button1.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
        view.addSubview(button1)
        
    }
    
    func closeAction(button: UIButton) {
        let vc = DuaViewController()
        transition = EasyTransition(attachedViewController: vc)
        transition?.transitionDuration = 0.7
        transition?.direction = .Left
        transition?.margins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        showViewController(vc, sender: self)
        
    }
    
    func buttonAction(button: UIButton) {
        let vc = ViewController()
        //        presentViewController(vc, animated: true, completion: nil)
        //        let window = UIApplication.sharedApplication().windows[0] as UIWindow
        //        window.rootViewController = vc
        self.showViewControllerWith(vc, usingAnimation: AnimationType.ANIMATE_LEFT)
        
    }
    
}
