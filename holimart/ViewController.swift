//
//  ViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/06/30.
//

import UIKit

class ViewController: UITabBarController{
    
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
        
        
        homeViewController.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        widgetViewController.tabBarItem = UITabBarItem(title: "위젯", image: UIImage(systemName: "square.grid.2x2"), selectedImage: UIImage(systemName: "square.grid.2x2.fill"))
        
        let viewControllers = [homeViewController, widgetViewController]
        
        self.viewControllers = viewControllers
    }
    
}

