//
//  WedgetViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/07/05.
//

import UIKit

class WidgetViewController: UIViewController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.delegate = self
        view.backgroundColor = .systemPink
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
