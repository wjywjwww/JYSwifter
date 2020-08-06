//
//  JYDelayTool.swift
//  JYSwifter
//
//  Created by Tiank on 2020/8/6.
//
/*
 可取消 延迟事件
 **/
import Foundation

typealias JYGCDTask = (_ cancel: Bool) ->()

class JYDelayTool {
    @discardableResult class func delay(_ time: TimeInterval, task: @escaping ()->()) -> JYGCDTask? {
        func dispatch_later(block: @escaping ()->()) {
            let t = DispatchTime.now() + time
            DispatchQueue.main.asyncAfter(deadline: t, execute: block)
        }
        var closure: (()->())? = task
        var result: JYGCDTask?
        let delayedClosure: JYGCDTask = { cancel in
            if let internalClosure = closure {
                if cancel == false {
                    DispatchQueue.main.async(execute: internalClosure)
                }
            }
            closure = nil
            result = nil
        }
        result = delayedClosure
        dispatch_later {
            if let delayedClosure = result {
                delayedClosure(false)
            }
        }
        return result
    }
    
    class func cancel(_ task: JYGCDTask?) {
        task?(true)
    }
}
