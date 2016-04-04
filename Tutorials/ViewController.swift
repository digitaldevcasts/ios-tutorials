//
//  ViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel = UILabel()
        nameLabel.text = "iD"
        nameLabel.font = UIFont(name: FontType.R_BOLD, size: 250)
        nameLabel.textColor = Color.WHITE
        nameLabel.textAlignment = .Center
        view.addSubview(nameLabel)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        nameLabel.frame = CGRectMake(20, (Global.HEIGHT / 2) - (Global.HEIGHT / 2) / 2, Global.WIDTH - 40, Global.WIDTH)
        
    }

}

