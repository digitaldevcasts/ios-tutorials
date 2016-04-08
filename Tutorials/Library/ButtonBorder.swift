//
//  ButtonBorder.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/9/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

public enum UIButtonBorderSide {
    case Top, Bottom, Left, Right, All
}

public enum UIAlignment {
    case Left, Right, Center
}

class ButtonBorder: UIButton {
    
    func addBorder(
            title           : String,
            titleColor      : UIColor,
            imageName       : String,
            fontStyle       : String,
            fontSize        : CGFloat,
            borderPosition  : UIButtonBorderSide,
            borderColor     : UIColor,
            borderWidth     : CGFloat,
            cornerRadius    : CGFloat,
            backgroundColor : UIColor,
            alignment       : UIAlignment,
            paddingLeft     : CGFloat,
            paddingRight    : CGFloat,
            paddingTop      : CGFloat,
            paddingBottom   : CGFloat
        ) {
        
        let border          = CALayer()
        border.borderColor  = borderColor.CGColor
        border.borderWidth  = borderWidth
        border.cornerRadius = cornerRadius
        
        switch borderPosition {
        case .All:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        case .Top:
            border.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: borderWidth)
        case .Bottom:
            border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: borderWidth)
        case .Left:
            border.frame = CGRect(x: 0, y: 0, width: borderWidth, height: self.frame.size.height)
        case .Right:
            border.frame = CGRect(x: self.frame.size.width - borderWidth, y: 0, width: borderWidth, height: self.frame.size.height)
        }
        
        switch alignment {
        case .Left:
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        case .Right:
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        case .Center:
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
        }
        
        let image: UIImage?         = UIImage(named: imageName)
        self.titleEdgeInsets.left   = paddingLeft
        self.titleEdgeInsets.right  = paddingRight
        self.titleEdgeInsets.top    = paddingTop
        self.titleEdgeInsets.bottom = paddingBottom
        self.backgroundColor        = backgroundColor
        self.titleLabel!.font       = UIFont(name: fontStyle, size: fontSize)
        self.layer.cornerRadius     = cornerRadius
        self.setImage(image, forState: .Normal)
        self.setImage(image, forState: .Highlighted)
        self.setTitle(NSLocalizedString(title, comment: ""), forState: .Normal)
        self.setTitleColor(titleColor, forState: .Normal)
        self.layer.addSublayer(border)
    }
}

