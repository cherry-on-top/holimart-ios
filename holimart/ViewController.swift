//
//  ViewController.swift
//  Holimart
//
//  Created by Hailey Lee on 2021/08/14.
//

import UIKit
import Alamofire
import CoreLocation
import NMapsMap

class ViewController: UIViewController {
     var locationM = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        let naverMapView = NMFNaverMapView(frame: view.frame)
        locationM.requestAlwaysAuthorization()
        locationM.allowsBackgroundLocationUpdates = true
            view.addSubview(naverMapView)
    }


}

