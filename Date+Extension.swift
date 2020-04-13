//
//  Date+Extension.swift
//  PrepareResignation
//
//  Created by 정진규 on 2020/01/19.
//  Copyright © 2020 JingyuJung. All rights reserved.
//

import Foundation

enum DateFormat: String {
    /// ex.  2020.03.30
    case yyyy__MM__dd = "yyyy.MM.dd"

    /// ex.  2020.3.30
    case yyyy__M__d = "yyyy.M.d"
    
    /// ex.  2020년 03월 30일
    case yyyy년_MM월_dd일 = "yyyy년 MM월 dd일"
    
    /// ex.  2020년 3월 30일
    case yyyy년_M월_d일 = "yyyy년 M월 d일"

    ////  ex. 2020년 4월 13일 17:12
    case yyyy년_M월_d일__hh_mm = "yyyy년 M월 d일 HH:mm"
}

extension Date {
    func asText(format: DateFormat) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }
}
