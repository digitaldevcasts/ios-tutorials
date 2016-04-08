//
//  Login.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/8/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit
import SteviaLayout

class Login:UIView {
    
    let email = UITextField()
    let password = UITextField()
    let login = UIButton()
    
    convenience init() {
        self.init(frame:CGRectZero)
        // This is only needed for live reload as injectionForXcode
        // doesn't swizzle init methods.
        render()
    }
    
    func render() {
        backgroundColor = .grayColor()
        
        sv([
            email.placeholder("Email").style(fieldStyle), //.style(emailFieldStyle),
            password.placeholder("Password").style(fieldStyle).style(passwordFieldStyle),
            login.text("Login").style(buttonSytle).tap(loginTapped)
            ])
        
        layout([
            |-email.width(Global.WIDTH/2-16).height(30).top(50)-password.height(50).top(200)-|,
            8,
            "",
            |login| ~ 50,
            0
            ])
    }
    
    func fieldStyle(f:UITextField) {
        f.backgroundColor = Color.WHITE
        f.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        f.font = UIFont(name: "HelveticaNeue-Light", size: 14)
        f.returnKeyType = .Next
    }
    
    func passwordFieldStyle(f:UITextField) {
        f.secureTextEntry = true
        f.returnKeyType = .Done
    }
    
    func buttonSytle(b:UIButton) {
        b.backgroundColor = .lightGrayColor()
    }
    
    func loginTapped() {
        //Do something
    }
}
