//
//  BaseViewController.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/4/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareView()
        
    }
    
    private func prepareView() {
        view.backgroundColor = Color.BLUE_LIGHT_3
    }

}
