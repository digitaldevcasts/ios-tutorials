//
//  BaseViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit
import Foundation

enum AnimationType{
    case ANIMATE_RIGHT
    case ANIMATE_LEFT
    case ANIMATE_UP
    case ANIMATE_DOWN
}

class BaseViewController: UIViewController, UINavigationBarDelegate {
    
    var navigationBar = UINavigationBar()

    let searchText    = UITextField()

    let menuButton    = UIButton()
    let searchButton  = UIButton()
    let cartButton    = UIButton()
    let barcodeButton = UIButton()
    let backButton    = UIButton()
    let doneButton    = UIButton()
    let cancelButton  = UIButton()
    let clearButton   = UIButton()
    let closeButton   = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    func showViewControllerWith(newViewController:UIViewController, usingAnimation animationType:AnimationType) {
        
        let currentViewController = UIApplication.sharedApplication().delegate?.window??.rootViewController
        let width = currentViewController?.view.frame.size.width;
        let height = currentViewController?.view.frame.size.height;
        
        var previousFrame:CGRect?
        var nextFrame:CGRect?
        
        switch animationType
        {
        case .ANIMATE_LEFT:
            previousFrame = CGRectMake(width!-1, 0.0, width!, height!)
            nextFrame = CGRectMake(-width!, 0.0, width!, height!);
        case .ANIMATE_RIGHT:
            previousFrame = CGRectMake(-width!+1, 0.0, width!, height!);
            nextFrame = CGRectMake(width!, 0.0, width!, height!);
        case .ANIMATE_UP:
            previousFrame = CGRectMake(0.0, height!-1, width!, height!);
            nextFrame = CGRectMake(0.0, -height!+1, width!, height!);
        case .ANIMATE_DOWN:
            previousFrame = CGRectMake(0.0, -height!+1, width!, height!);
            nextFrame = CGRectMake(0.0, height!-1, width!, height!);
        }
        
        newViewController.view.frame = previousFrame!
        UIApplication.sharedApplication().delegate?.window??.addSubview(newViewController.view)
        UIView.animateWithDuration(0.33,
            animations: { () -> Void in
                newViewController.view.frame = (currentViewController?.view.frame)!
                currentViewController?.view.frame = nextFrame!
                
            })
            { (fihish:Bool) -> Void in
                UIApplication.sharedApplication().delegate?.window??.rootViewController = newViewController
        }
    }

}
