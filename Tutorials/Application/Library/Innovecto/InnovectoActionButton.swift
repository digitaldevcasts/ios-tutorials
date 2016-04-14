//
//  InnovectoActionButton.swift
//  Tutorials
//
//  Created by Innovecto iOS on 4/14/16.
//  Copyright © 2016 Innovecto iOS. All rights reserved.
//

import UIKit

typealias ActionBlock = (() -> Void)?

class ClosureWrapper {
    var closure:ActionBlock
    
    init(_ closure:ActionBlock) {
        self.closure = closure
    }
}

private var kButtonBlockAssociationKey: UInt8 = 0
public extension UIButton {
    
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
    
    public func action(block:() -> Void) -> UIButton {
        addTarget(self, action: #selector(UIButton.tapped), forControlEvents: .TouchUpInside)
        testButtonBlock = block
        return self
    }
    
    func tapped() {
        testButtonBlock?()
    }
}
