//
//  MapViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/07/14.
//

import UIKit
import NMapsMap

class MapViewController: UIViewController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        
        let mapView = NMFMapView(frame: view.frame)
           view.addSubview(mapView)
        mapView.positionMode = .compass
        mapView.showLegalNotice()
        
        let locationStatus = CLLocationManager.authorizationStatus()
        print("위치 권한 요청 value", locationStatus.rawValue)

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
