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
        view.backgroundColor = .black
    }
    
    
    private func setUpTabBar() {
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
        
        let homeViewController = HomeViewController()
        let widgetViewController = WidgetViewController()
        
        
        let unselectedImage = UIImage(systemName: "house")
        let selectedImage = UIImage(systemName: "house.fill")
        
        homeViewController.tabBarItem = UITabBarItem(title: "홈", image: unselectedImage, selectedImage: selectedImage)
        
        widgetViewController.tabBarItem = UITabBarItem(title: "위젯", image: UIImage(systemName: "square.grid.2x2"), selectedImage: UIImage(systemName: "square.grid.2x2.fill"))
        
        let viewControllers = [homeViewController, widgetViewController]
        
        self.viewControllers = viewControllers
    }
    
}

