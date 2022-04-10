//
//  CustomTabbarController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/09.
//

import UIKit

final class CustomTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabbarController()
    }

    func setTabbarController() {
        guard let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "CustomFirstTabViewController") as? CustomFirstTabViewController else { return }
        
        firstViewController.tabBarItem = UITabBarItem(title: "First Tab",
                                                      image: UIImage(systemName: "house"),
                                                      selectedImage: UIImage(systemName: "house.fill"))
        
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "CustomSecondTabViewController") as? CustomSecondTabViewController else { return }
        
        secondViewController.tabBarItem = UITabBarItem(title: "Second Tab",
                                                       image: UIImage(named: "Image"),
                                                       selectedImage: UIImage(named: "Image-1"))
        
        setViewControllers([firstViewController, secondViewController], animated: true)
    }
}
