//
//  DDButton.swift
//  Develop By  : Ari Munandar
//  Contact     : arimunandar.dev@gmail.com
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

public enum UIPadding {
    case Left, Right, Top, Bottom
}

typealias ActionBlock = (() -> Void)?

class ClosureWrapper {
    var closure:ActionBlock
    
    init(_ closure:ActionBlock) {
        self.closure = closure
    }
}

private var kButtonBlockAssociationKey: UInt8 = 0

class InnovectoButton: UIButton {
    
    /* SET TITLE */
    func addTitle(
        title       : String,
        color       : UIColor,
        style       : String,
        size        : CGFloat,
        alignment   : UIAlignment,
        bgColor     : UIColor,
        tintColor   : UIColor
        
    ) {
        switch alignment {
        case .Left:
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        case .Right:
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        case .Center:
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
        }

        self.tintColor          = tintColor
        self.backgroundColor    = bgColor
        self.titleLabel!.font   = UIFont(name: style, size: size)
        self.setTitle(NSLocalizedString(title, comment: ""), forState: .Normal)
        self.setTitleColor(color, forState: .Normal)
    }
    
    /* SET BORDER */
    func addBorder(
            position        : UIButtonBorderSide,
            color           : UIColor,
            width           : CGFloat,
            cornerRadius    : CGFloat
        ) {
        let border          = CALayer()
        border.borderColor  = color.CGColor
        border.borderWidth  = width
        border.cornerRadius = cornerRadius
        
        switch position {
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
        
        self.layer.cornerRadius = cornerRadius
        self.layer.addSublayer(border)
    }
    
    /* SET IMAGE */
    func addImage(
        imageName   : String
    ) {
        let image: UIImage? = UIImage(named: imageName)
        self.setImage(image, forState: .Normal)
        self.setImage(image, forState: .Highlighted)
    }
    
    /* SET TEXT PADDING */
    func addTitlePadding(
        padding : UIPadding,
        width   : CGFloat
    ) {
        switch padding {
        case .Left:
            self.titleEdgeInsets.left   = width
        case .Right:
            self.titleEdgeInsets.right  = width
        case .Top:
            self.titleEdgeInsets.top    = width
        case .Bottom:
            self.titleEdgeInsets.bottom = width
        }
    }
    
    /* SET IMAGE PADDING */
    func addImagePadding(
        paddingStyle    : UIPadding,
        width           : CGFloat
    ) {
        switch paddingStyle {
        case .Left:
            self.imageEdgeInsets.left   = width
        case .Right:
            self.imageEdgeInsets.right  = width
        case .Top:
            self.imageEdgeInsets.top    = width
        case .Bottom:
            self.imageEdgeInsets.bottom = width
        }
    }
    
    /* SET SHADOW */
    func addShadow(bounds: Bool, color: UIColor, opacity: Float, radius: CGFloat, offset: CGSize) {
        self.layer.masksToBounds = bounds
        self.layer.shadowColor   = color.CGColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius  = radius
        self.layer.shadowOffset  = offset
    }
    
    internal var testButtonBlock:ActionBlock {
        get {
            if let cw = objc_getAssociatedObject(self, &kButtonBlockAssociationKey) as? ClosureWrapper {
                return cw.closure
            }
            return nil
        }
        set(newValue) {
            objc_setAssociatedObject(self, &kButtonBlockAssociationKey, ClosureWrapper(newValue), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    /* SET ACTION */
    func action(block:() -> Void) -> UIButton {
        #if swift(>=2.2)
            addTarget(self, action: #selector(UIButton.tapped), forControlEvents: .TouchUpInside)
        #else
            addTarget(self, action: "tapped", forControlEvents: .TouchUpInside)
        #endif
        testButtonBlock = block
        return self
    }
    
    override func tapped() {
        testButtonBlock?()
    }
}


