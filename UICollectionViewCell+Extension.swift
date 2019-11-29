//
//  UICollectionViewCell+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/11/26.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    static var identifier: String {
        return String(describing: Self.self)
    }
}
