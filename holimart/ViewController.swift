//
//  ViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/06/30.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabBar()
    }
    
    
    func setUpTabBar() {
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
        
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        
        let unselectedImage = UIImage(systemName: "house")
        let selectedImage = UIImage(systemName: "house.fill")
        
        homeViewController.tabBarItem = UITabBarItem(title: "홈", image: unselectedImage, selectedImage: selectedImage)
        
        let viewControllers = [homeViewController]
        
        self.viewControllers = viewControllers
    }
    
}

