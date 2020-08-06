//
//  ViewController.swift
//  JYSwifter
//
//  Created by wjywjwww on 07/17/2020.
//  Copyright (c) 2020 wjywjwww. All rights reserved.
//

import UIKit
import JYSwifter

/*
 首先提交修改
 然后打标签标签里面的值就是版本号 同时也需要更新 JYSwifter.podspec 里面的 s.version的值
 pod spec lint JYSwifter.podspec --verbose
 pod trunk push JYSwifter.podspec
 **/

class ViewController: UIViewController {
    var someProperty = "Hello"
    override func viewDidLoad() {
        super.viewDidLoad()
        let classA = ClassA()
        classA.someMethod {
          someProperty = "闭包内..."
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
class ClassA {
  // 接受非逃逸闭包作为参数
  func someMethod(closure: () -> Void) {
    // 想干什么？
  }
}
