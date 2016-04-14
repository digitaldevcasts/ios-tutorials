//
//  ViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    var firstLabel: InnovectoLabel!
    var lastLabel: InnovectoLabel!
    let button = InnovectoButton()
    let firstText = InnovectoTextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.BLUE_LIGHT_3
        
        firstLabel = InnovectoLabel()
        firstLabel.frame = CGRectMake(20, 200, Global.WIDTH - 40, Height.Label.HEIGHT_50)
        firstLabel.text = "Ary Munandar"
        firstLabel.font = UIFont(name: F_Style.G_MEDIUM, size: F_Size.FONT_20)
        firstLabel.textColor = Color.WHITE
        firstLabel.textAlignment = .Center
        firstLabel.addBorder(.Bottom, color: Color.WHITE, width: 1)
        view.addSubview(firstLabel)
        
        lastLabel = InnovectoLabel()
        lastLabel.frame = CGRectMake(20, firstLabel.frame.maxY, Global.WIDTH - 40, Height.Label.HEIGHT_50)
        lastLabel.text = "iOS Developer"
        lastLabel.font = UIFont(name: F_Style.G_MEDIUM, size: F_Size.FONT_20)
        lastLabel.textColor = Color.WHITE
        lastLabel.textAlignment = .Center
        view.addSubview(lastLabel)
        
        button.frame = CGRectMake(20, lastLabel.frame.maxY + 50, Global.WIDTH - 40, 50)
        button.addTitle(
            "Digital Devcasts",
            color       : Color.BLUE,
            style       : F_Style.G_MEDIUM,
            size        : F_Size.FONT_18,
            alignment   : .Left,
            bgColor     :Color.WHITE,
            tintColor   : Color.BLUE
        )
        let paddingWidth : CGFloat = 10
        button.addImage("Remove")
        button.addImagePadding(.Left, width: paddingWidth)
        button.addTitlePadding(.Left, width: paddingWidth + 10)
        button.addBorder(.All, color: Color.PINK, width: 1, cornerRadius: 0)
        button.action(actionButton)
        view.addSubview(button)
        
        firstText.frame = CGRectMake(20, Global.HEIGHT - 50, Global.WIDTH - 40, 30)
        firstText.addGeneral(.Left, placeholder: "First Name", placeholderColor: Color.GREY_DARK_1, textColor: Color.WHITE, tintColor: Color.WHITE, bgColor: Color.CLEAR, F_Style: F_Style.G_MEDIUM, F_Size: F_Size.FONT_14)
        firstText.addBorder(.Bottom, color: Color.WHITE, width: 2)
        firstText.delegate = self
        view.addSubview(firstText)
        
    }
    
    func tapped() {
        print("OK")
    }
    
    func actionButton() {
        print("OK")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
    }

}



