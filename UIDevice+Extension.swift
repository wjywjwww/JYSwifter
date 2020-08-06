//
//  UIDevice+Extension.swift
//  JYSwifter
//
//  Created by Tiank on 2020/8/6.
//

import Foundation
extension UIDevice{
    /// iPhoneX、iPhoneXR、iPhoneXs、iPhoneXs Max等
    /// 判断刘海屏，返回true表示是刘海屏
    ///
    var isNotchScreen: Bool {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return false
        }
        let size = UIScreen.main.bounds.size
        let notchValue: Int = Int(size.width/size.height * 100)
        if 216 == notchValue || 46 == notchValue {
            return true
        }
        return false
    }
}
