//
//  ViewController.swift
//  Holimart
//
//  Created by Hailey Lee on 2021/08/14.
//

import UIKit
import Alamofire
import NMapsMap

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let naverMapView = NMFNaverMapView(frame: view.frame)
            view.addSubview(naverMapView)
    }


}

