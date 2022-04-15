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
        setTabbarUI()
    }
    
    private func setTabbarUI() {
        UITabBar.clearShadow()
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .white
        self.tabBar.layer.shadowColor = UIColor(red: 218.0/255.0, green: 218.0/255.0, blue: 218.0/255.0, alpha: 1.0).cgColor
        self.tabBar.layer.shadowOpacity = 1
        self.tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.tabBar.layer.shadowRadius = 1.5
    }
    
}

extension UITabBar {
    static func clearShadow() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.white
    }
}
