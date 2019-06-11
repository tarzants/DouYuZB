//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by TianShan on 2019/6/1.
//  Copyright © 2019 Sam. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 60
class HomeViewController: UIViewController {

    private lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: kStatusBarH+kNavgationBarH, width: kScreenW, height: kTitleViewH)
        let titles =  ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        //titleView.backgroundColor = UIColor.purple
        return titleView
    }()
    
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
        //不需要调整scrollview的内边距
        //automaticallyAdjustsScrollViewInsets = false
        //UIScrollView.ContentInsetAdjustmentBehavior = false
        
        //设置导航栏P
        setupNavigationBar()
        //添加titleView
        view.addSubview(pageTitleView)
    }
    private func setupNavigationBar() {
        //设置左侧button
        /*
        let logobtn = UIButton()
        logobtn.setImage(UIImage(named: "logo"), for: .normal)
        logobtn.sizeToFit()
        */
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        //设置右侧button
        let size = CGSize(width: 28, height: 35)

        //构造函数方法
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highimageName: "Image_scan_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highimageName: "btn_search_clicked", size: size)
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highimageName: "Image_my_history_click" , size: size)
        /*
        //抽象类函数
        let qrcodeItem = UIBarButtonItem.creatItem(imageName: "Image_scan", highimageName: "Image_scan_click", size: size)
        
        let searchItem = UIBarButtonItem.creatItem(imageName: "btn_search", highimageName: "btn_search_clicked", size: size)
        
        let historyItem = UIBarButtonItem.creatItem(imageName: "image_my_history", highimageName: "Image_my_history_click" , size: size)
        */
        
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
}
