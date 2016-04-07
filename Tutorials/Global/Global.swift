//
//  File.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class Global {
    
    static var DEVICE_ID:String {
        
        return UIDevice.currentDevice().identifierForVendor!.UUIDString
        
    }
    
    static let bounds:CGRect = UIScreen.mainScreen().bounds
    static let WIDTH:CGFloat  = bounds.size.width
    static let HEIGHT:CGFloat = bounds.size.height
    
}

class Color {
    
    static let RED          = UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let RED_LIGHT    = UIColor(red: 255.0/255.0, green: 68.0/255.0, blue: 68.0/255.0, alpha: 1.0)
    static let PINK         = UIColor(red: 255.0/255.0, green: 20.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    static let ORANGE       = UIColor(red: 255.0/255.0, green: 70.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let BLACK        = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let WHITE        = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static let YELLOW       = UIColor(red: 255.0/255.0, green: 215.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let BLUE         = UIColor(red: 31.0/255.0, green: 102.0/255.0, blue: 229.0/255.0, alpha: 1.0)
    static let BLUE_LIGHT_1 = UIColor(red: 51.0/255.0, green: 153.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static let BLUE_LIGHT_2 = UIColor(red: 64.0/255.0, green: 64.0/255.0, blue: 64.0/255.0, alpha: 1.0)
    static let BLUE_LIGHT_3 = UIColor(red: 30.0/255.0, green: 144.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static let GREY_DARK_1  = UIColor(red: 64.0/255.0, green: 64.0/255.0, blue: 64.0/255.0, alpha: 1.0)
    static let GREY_DARK_2  = UIColor(red: 56.0/255.0, green: 56.0/255.0, blue: 56.0/255.0, alpha: 1.0)
    static let GREY_DARK_3  = UIColor(red: 90.0/255.0, green: 90.0/255.0, blue: 90.0/255.0, alpha: 1.0)
    
}

class FontSize {
    
    static let FONT_10 : CGFloat = 10
    static let FONT_11 : CGFloat = 11
    static let FONT_12 : CGFloat = 12
    static let FONT_14 : CGFloat = 14
    static let FONT_16 : CGFloat = 16
    static let FONT_18 : CGFloat = 18
    static let FONT_20 : CGFloat = 20
    static let FONT_22 : CGFloat = 22
    static let FONT_24 : CGFloat = 24
    static let FONT_26 : CGFloat = 26
    static let FONT_28 : CGFloat = 28
    static let FONT_30 : CGFloat = 30
    static let FONT_32 : CGFloat = 32
    static let FONT_34 : CGFloat = 34
    static let FONT_36 : CGFloat = 36
    static let FONT_38 : CGFloat = 38
    static let FONT_40 : CGFloat = 40
    
}

class FontType {
    
    /* Droid Serif */
    static let D_BOLDITALIC = "DroidSerif-BoldItalic"
    static let D_BOLD       = "DroidSerif-Bold"
    static let D_ITALIC     = "DroidSerif-Italic"
    static let D_REGULAR    = "DroidSerif"
    
    /* Roboto Slab */
    static let R_BOLD       = "RobotoSlab-Bold"
    static let R_LIGHT      = "RobotoSlab-Light"
    static let R_REGULAR    = "RobotoSlab-Regular"
    static let R_THIN       = "RobotoSlab-Thin"
    
}

class Space {
    
    static let SPACE_ITEM_TO_SCREEN : CGFloat = 16
    static let SPACE_ITEM_TO_ITEM : CGFloat = 8
    
}

class NavigationItems {
    
    static let ITEM_SIZE : CGFloat = 30
    static let ITEM_WIDTH : CGFloat = 30
    static let ITEM_HEIGHT : CGFloat = 30
    
}
