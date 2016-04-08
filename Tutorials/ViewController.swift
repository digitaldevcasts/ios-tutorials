//
//  ViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    
    var firstLabel: LabelBorder!
    var lastLabel: UILabel!
    let button = ButtonBorder()
    let firstText = TextFieldBorder()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.BLUE_LIGHT_3
        
        firstLabel = LabelBorder()
        firstLabel.frame = CGRectMake(20, 200, Global.WIDTH - 40, Height.Label.HEIGHT_50)
        firstLabel.text = "Ary Munandar"
        firstLabel.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_20)
        firstLabel.textColor = Color.WHITE
        firstLabel.textAlignment = .Center
        firstLabel.addBorder(.All, color: Color.WHITE, width: 1)
        view.addSubview(firstLabel)
        
        lastLabel = UILabel()
        lastLabel.frame = CGRectMake(20, firstLabel.frame.maxY, Global.WIDTH - 40, Height.Label.HEIGHT_50)
        lastLabel.text = "iOS Developer"
        lastLabel.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_20)
        lastLabel.textColor = Color.WHITE
        lastLabel.textAlignment = .Center
        view.addSubview(lastLabel)
        
        button.frame = CGRectMake(20, lastLabel.frame.maxY + 50, Global.WIDTH - 40, 50)
        button.addBorder(
            "Button",
            titleColor      : Color.BLUE,
            imageName       : "",
            fontStyle       : FontType.R_BOLD,
            fontSize        : FontSize.FONT_18,
            borderPosition  : .Bottom,
            borderColor     : Color.GREY_DARK_1,
            borderWidth     : 2,
            cornerRadius    : 0,
            backgroundColor : Color.WHITE,
            alignment       : .Right,
            paddingLeft     : 10,
            paddingRight    : 10,
            paddingTop      : 0,
            paddingBottom   : 0
        )
        button.addTarget(self, action: #selector(ViewController.buttonAction(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(button)
        
        firstText.frame = CGRectMake(20, Global.HEIGHT - 50, Global.WIDTH - 40, 30)
        firstText.layer.masksToBounds = true
        firstText.placeholder         = "First Name"
        firstText.backgroundColor     = Color.CLEAR
        firstText.tintColor           = Color.WHITE
        firstText.addBorder(.Bottom, color: Color.WHITE, width: 1)
        firstText.setValue(Color.WHITE, forKeyPath: "_placeholderLabel.textColor")
        view.addSubview(firstText)
        
        tableView.frame = CGRectMake(20, button.frame.maxY, Global.WIDTH - 40, 200)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = Color.WHITE
        tableView.hidden = true
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        tableView.layoutMargins  = UIEdgeInsetsZero
        tableView.separatorInset = UIEdgeInsets(top: 0, left: Global.WIDTH - 40, bottom: 0, right: 0)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
    }
    
    func buttonAction(button: UIButton) {
        if tableView.hidden == true {
            tableView.hidden = false
        } else {
            tableView.hidden = true
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        cell.textLabel!.text = "Data \(indexPath.row)"
        cell.layoutMargins                  = UIEdgeInsetsZero
        cell.separatorInset                 = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        cell.selectionStyle                 = .None
        cell.textLabel!.font = UIFont(name: FontType.R_BOLD, size:18)
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        button.setTitle("Data \(indexPath.row)", forState: .Normal)
        tableView.hidden = true
        firstText.text = "Data \(indexPath.row)"
    }

}



