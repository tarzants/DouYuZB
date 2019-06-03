//
//  UIBarButtonItem-Extension.swift
//  DouYuZB
//
//  Created by TianShan on 2019/6/3.
//  Copyright © 2019 Sam. All rights reserved.
//

import UIKit

extension UIBarButtonItem
{
    /*
    //抽象类方法
    class func creatItem(imageName : String, highimageName : String, size : CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highimageName), for: .highlighted)
        btn.frame = CGRect(origin: .zero, size: size)
        
        return UIBarButtonItem(customView: btn)
        
    }
    */
    
    //抽象便利构造函数方法
    convenience init(imageName : String, highimageName : String = "", size : CGSize = CGSize.zero) {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highimageName != "" {
        btn.setImage(UIImage(named: highimageName), for: .highlighted)
        }
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
        btn.frame = CGRect(origin: .zero, size: size)
        }
        
        self.init(customView: btn)
    }
    
}
