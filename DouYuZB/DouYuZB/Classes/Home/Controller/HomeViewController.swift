//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by TianShan on 2019/6/1.
//  Copyright © 2019 Sam. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置UI界面
        setupUI()
        // Do any additional setup after loading the view.
    }
    

}
//设置UI界面
extension HomeViewController {
    private func setupUI() {
        setupNavigationBar()
    }
    private func setupNavigationBar() {
        let btn = UIButton()
        btn.setImage(UIImage(named: "logo"), for: .normal)
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
}
