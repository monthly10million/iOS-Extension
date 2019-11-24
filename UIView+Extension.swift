//
//  UIView+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/11/24.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import UIKit

// Storyboard inspectable
extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.4
            layer.shadowRadius = newValue
        }
    }
}

//
extension UIView {
    static func instanceFromNib() -> Self {
        let nib = UINib(nibName: NSStringFromClass(Self.self).components(separatedBy: ".").last!, bundle: nil)
        return nib.instantiate(withOwner: nil).first! as! Self
    }
}
