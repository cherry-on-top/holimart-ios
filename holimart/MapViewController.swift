//
//  MapViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/07/14.
//

import UIKit
import CoreLocation
import NMapsMap

class MapViewController: UIViewController, UITabBarControllerDelegate {

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        
        let locationStatus = CLLocationManager.authorizationStatus()
        print("위치 정보 권한 요청 밸류:",locationStatus.rawValue)
        
        let mapView = NMFMapView(frame: view.frame)
           view.addSubview(mapView)
        mapView.positionMode = .compass
        mapView.showLegalNotice()
        
    
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
