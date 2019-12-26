//
//  String+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/11/23.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }

    var removeDecimalStyle: String {
        return replacingOccurrences(of: ",", with: "")
    }
}
