//
//  MainViewController.swift
//  DouYuZB
//
//  Created by TianShan on 2019/6/1.
//  Copyright © 2019 Sam. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(storyName: "Home")
        addChildVC(storyName: "Live")
        addChildVC(storyName: "Follow")
        addChildVC(storyName: "Profile")
        
        // Do any additional setup after loading the view.
    }
    
    private func addChildVC(storyName : String) {
        //通过storyboard获取控制器
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        //添加childvc为子控制器
        addChild(childVC)
        
    }

}
