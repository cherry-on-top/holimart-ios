//
//  AppDelegate.swift
//  holimart
//
//  Created by Hailey Lee on 2021/06/30.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpRootViewController()
        return true
    }
    
    private func setUpRootViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ViewController()

        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
//        let brandController = BrandViewController()
//        let navController = UINavigationController(rootViewController: brandController)
//
//        window?.rootViewController = brandController
//        window?.makeKeyAndVisible()
    }


}

