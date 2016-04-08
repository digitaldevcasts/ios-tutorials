//
//  TextField.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/9/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

public enum UITextFieldBorderSide {
    case Top, Bottom, Left, Right, All
}

class TextFieldBorder: UITextField {
    
    func addBorder(side: UITextFieldBorderSide, color: UIColor, width: CGFloat) {
        let border         = CALayer()
        border.borderColor = color.CGColor
        border.borderWidth = width
        
        switch side {
        case .All:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        case .Top:
            border.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: width)
        case .Bottom:
            border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
        case .Left:
            border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
        case .Right:
            border.frame = CGRect(x: self.frame.size.width - width, y: 0, width: width, height: self.frame.size.height)
        }
        
        self.layer.addSublayer(border)
    }
}
