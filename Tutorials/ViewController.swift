//
//  ViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    let scrollView = UIScrollView()
    
    var firstLabel: UILabel!
    var lastLabel: UILabel!
    let button = UIButton()
    let firstText = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.BLUE_LIGHT_3
        
        view.addSubview(scrollView)
        
        firstLabel = UILabel()
        firstLabel.text = "Ary Munandar"
        firstLabel.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_20)
        firstLabel.textColor = Color.WHITE
        firstLabel.textAlignment = .Center
        scrollView.addSubview(firstLabel)
        
        lastLabel = UILabel()
        lastLabel.text = "iOS Developer"
        lastLabel.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_20)
        lastLabel.textColor = Color.WHITE
        lastLabel.textAlignment = .Center
        scrollView.addSubview(lastLabel)
        
        button.backgroundColor = Color.WHITE
        button.titleLabel!.font = UIFont(name: FontType.R_BOLD, size: FontSize.FONT_18)
        button.setTitle("Button", forState: .Normal)
        button.setTitleColor(Color.BLUE_LIGHT_3, forState: .Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
        scrollView.addSubview(button)
        
        let paddingView1 = UIView(frame:CGRectMake(0, 0, 20, self.firstText.frame.height))
//        let paddingView2 = UIView(frame:CGRectMake(0, 0, 0, self.firstText.frame.height))
        firstText.leftView = paddingView1
        firstText.leftViewMode = UITextFieldViewMode.Always
//        firstText.rightView = paddingView2
//        firstText.rightViewMode = UITextFieldViewMode.Always
        firstText.backgroundColor = Color.WHITE
        firstText.placeholder = "First Name"
        firstText.font = UIFont(name: FontType.R_REGULAR, size: FontSize.FONT_20)
        firstText.textColor = Color.GREY_DARK_3
//        firstText.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        scrollView.addSubview(firstText)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = Color.WHITE
        tableView.hidden = true
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        tableView.layoutMargins  = UIEdgeInsetsZero
        tableView.separatorInset = UIEdgeInsets(top: 0, left: Global.WIDTH - 40, bottom: 0, right: 0)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        scrollView.addSubview(tableView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if UIDevice.currentDevice().orientation.isLandscape.boolValue {
            print("Landscape")
            scrollView.contentSize = CGSize(width: Global.HEIGHT, height: Global.WIDTH)
            scrollView.frame = CGRectMake(0, 0, Global.HEIGHT, Global.WIDTH)
            firstLabel.frame = CGRectMake(20, 20, Global.HEIGHT / 2 - 20, FontSize.FONT_24)
            firstText.frame = CGRectMake(20, Global.WIDTH - 70, Global.HEIGHT - 40, 50)
            lastLabel.frame = CGRectMake(20, firstLabel.frame.maxY, Global.HEIGHT / 2 - 20, FontSize.FONT_24)
            button.frame = CGRectMake(Global.HEIGHT / 2, 20, Global.HEIGHT / 2 - 20, 50)
            if button.frame.maxY < Global.HEIGHT / 2 + 50 {
                tableView.frame = CGRectMake(Global.HEIGHT / 2, button.frame.maxY + 1, Global.HEIGHT / 2 - 20, 200)
            } else {
                tableView.frame = CGRectMake(20, button.frame.maxY - 251 , Global.HEIGHT - 40, 200)
            }
        } else {
            print("Portrait")
            scrollView.contentSize = CGSize(width: Global.WIDTH, height: Global.HEIGHT)
            scrollView.frame = CGRectMake(0, 0, Global.WIDTH, Global.HEIGHT)
            firstLabel.frame = CGRectMake(20, 200, Global.WIDTH - 40, FontSize.FONT_24)
            firstText.frame = CGRectMake(20, Global.HEIGHT - 70, Global.WIDTH - 40, 50)
            lastLabel.frame = CGRectMake(20, firstLabel.frame.maxY, Global.WIDTH - 40, FontSize.FONT_24)
            button.frame = CGRectMake(20, lastLabel.frame.maxY + 50, Global.WIDTH - 40, 50)
            if button.frame.maxY < Global.HEIGHT / 2 + 50 {
                tableView.frame = CGRectMake(20, button.frame.maxY + 1, Global.WIDTH - 40, 200)
            } else {
                tableView.frame = CGRectMake(20, button.frame.maxY - 251 , Global.WIDTH - 40, 200)
            }
        }
    
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

