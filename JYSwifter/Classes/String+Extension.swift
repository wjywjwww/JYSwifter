//
//  String+Extension.swift
//  JYSwifter
//
//  Created by Tiank on 2020/7/15.
//  Copyright © 2020 Tiank. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    /// 获取特定字符串在本字符串里面的范围
    /// - Parameter string: 特定字符串
    /// - Returns: 范围数据
    public func ranges(of string: String) -> [Range<Index>] {
        var ranges = [Range<Index>]()

        let pCount = string.count
        let strCount = self.count

        if strCount < pCount { return [] }

        for idx in 0...(strCount-pCount) {
            let from = index(self.startIndex, offsetBy: idx)

            if let toIdx = index(from, offsetBy: pCount, limitedBy: self.endIndex) {
                if string == self[from..<toIdx] {
                    ranges.append(from..<toIdx)
                }
            }
        }

        return ranges
    }
    
    /// 给多个特定字符串添加 Attributes 属性
    /// - Parameters:
    ///   - attrs: Attributes 属性
    ///   - keywords: 需要添加属性的字符串数组
    /// - Returns: NSMutableAttributedString 对象
    public func addAttributesByKeywords(attrs: [NSAttributedString.Key : Any] = [:],keywords:[String]) -> NSMutableAttributedString{
        let attributedString = NSMutableAttributedString(string: self)
        for keyword in keywords{
            let ranges = self.ranges(of: keyword)
            for range in ranges{
                attributedString.addAttributes(attrs, range: range.toNSRange(in: self))
            }
        }
        return attributedString
    }
}

