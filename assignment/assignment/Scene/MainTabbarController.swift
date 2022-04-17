//
//  MainTabbarController.swift
//  assignment
//
//  Created by 이경민 on 2022/04/15.
//

import UIKit

final class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabbar()
    }
    
    private func setTabbar() {
        var borderView = UIView(frame: CGRect(x: 0, y: 0,
                                              width: UIScreen.main.bounds.width, height: 1.5))
        borderView.backgroundColor = UIColor(red: 218.0/255.0, green: 218.0/255.0, blue: 218.0/255.0, alpha: 1.0)
        self.tabBar.addSubview(borderView)
        
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .white
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        tabBar.backgroundColor = item.tag == 3 ? .black : .white
        tabBar.tintColor = item.tag == 3 ? .white : .black
        tabBar.barTintColor = item.tag == 3 ? .white : .black
    }
}
