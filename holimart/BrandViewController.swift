//
//  BrandViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/07/14.
//

import UIKit
import Alamofire

class BrandViewController: UIViewController {

    
    var welcomeLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpUI()
        setupConstraints()
    }
    
    private func setUpUI() {
        welcomeLabel.text = "HolliMart에 오신 것을 환영합니다."
        welcomeLabel.font = UIFont(name: ".AppleSystemUIFont", size: 40)
        welcomeLabel.textColor = .black
        welcomeLabel.textAlignment = .left
        welcomeLabel.numberOfLines = 0
        view.addSubview(welcomeLabel)
    }
    
    private func setupConstraints() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 200),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
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
