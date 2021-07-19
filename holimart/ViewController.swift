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
        let mapViewController = MapViewController()
        
        homeViewController.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        widgetViewController.tabBarItem = UITabBarItem(title: "위젯", image: UIImage(systemName: "square.grid.2x2"), selectedImage: UIImage(systemName: "square.grid.2x2.fill"))
        
        mapViewController.tabBarItem = UITabBarItem(title: "지도", image: UIImage(systemName: "map"), selectedImage: UIImage(systemName: "map.fill"))
        
        let viewControllers = [mapViewController, widgetViewController]
        
        self.viewControllers = viewControllers
    }
    
}

