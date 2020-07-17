//
//  Range+Extension.swift
//  JYSwifter
//
//  Created by Tiank on 2020/7/17.
//

import Foundation
extension Range where Bound == String.Index{

    /// 把 range 变成 NSRange iOS里面某些方法还是需要 NSRange对象 苹果还没有重写
    /// - Parameter string: 所在的string对象
    /// - Returns: NSRange 对象
    public func toNSRange(in string:String) -> NSRange {
        return NSRange(self, in: string)
    }
}
