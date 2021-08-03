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
    var martSelectLabel = UILabel()
    let emartImgView = UIImageView()
    let emartImg = UIImage(named: "logoEmart")
    let homePlusImgView = UIImageView()
    let homePlusImg = UIImage(named: "logoHomeplus")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpUI()
    }
    
    private func setUpUI() {
        welcomeLabel.text = "HolliMart에 오신 것을 환영합니다."
        welcomeLabel.font = UIFont(name: ".AppleSystemUIFont", size: 40)
        welcomeLabel.textColor = .black
        welcomeLabel.textAlignment = .left
        welcomeLabel.numberOfLines = 0
        
        martSelectLabel.text = "자주 가는 마트를 2개 이상 선택해주세요 🙏"
        martSelectLabel.font = UIFont(name: ".AppleSystemUIFont", size: 24)
        martSelectLabel.textColor = .black
        martSelectLabel.textAlignment = .left
        martSelectLabel.numberOfLines = 0
        
        emartImgView.backgroundColor = .blue
        homePlusImgView.backgroundColor = .systemGray
        
        view.addSubview(welcomeLabel)
        view.addSubview(martSelectLabel)
        view.addSubview(emartImgView)
        view.addSubview(homePlusImgView)
        
        setUpConstraints()
    }
    
    private func setUpConstraints() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        martSelectLabel.translatesAutoresizingMaskIntoConstraints = false
        emartImgView.translatesAutoresizingMaskIntoConstraints = false
        homePlusImgView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 200),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 160)
        ])
        
        NSLayoutConstraint.activate([
            martSelectLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 0),
            martSelectLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            martSelectLabel.widthAnchor.constraint(equalToConstant: 220),
            martSelectLabel.heightAnchor.constraint(equalToConstant: 100)
        ])

        NSLayoutConstraint.activate([
            emartImgView.topAnchor.constraint(equalTo: martSelectLabel.bottomAnchor, constant: 0),
            emartImgView.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            emartImgView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -40),
            emartImgView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
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
