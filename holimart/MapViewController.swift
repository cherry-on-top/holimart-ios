//
//  MapViewController.swift
//  holimart
//
//  Created by Hailey Lee on 2021/07/14.
//

import UIKit
import CoreLocation
import NMapsMap
import Alamofire

class MapViewController: UIViewController, UITabBarControllerDelegate, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    var location = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        locationManager.stopUpdatingLocation()
        
        let locationStatus = locationManager.authorizationStatus
        print("위치 정보 권한 요청 밸류:",locationStatus.rawValue)
        
        let mapView = NMFMapView(frame: view.frame)
           view.addSubview(mapView)
        mapView.positionMode = .direction
        mapView.showLegalNotice()
        
        currentLocation(locationManager, didUpdateLocations: [location])
        
        let coord = NMGLatLng(lat: 37.5670135, lng: 126.9783740)

        print("위도: \(coord.lat), 경도: \(coord.lng)")
    
        let maker = NMFMarker()
        maker.position = NMGLatLng(lat: 37.5670135, lng: 126.9783740)
        maker.mapView = mapView
        
        requestGPSPermission()
    }
    
    func requestGPSPermission(){
            
        switch locationManager.authorizationStatus {
        case .authorizedAlways, .authorizedWhenInUse:
                print("GPS: 권한 있음")
            case .restricted, .notDetermined:
                print("GPS: 아직 선택하지 않음")
            case .denied:
                print("GPS: 권한 없음")
            default:
                print("GPS: Default")
            }
        }
    
    func currentLocation(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation]
    ) {
        if let location = locations.last {
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude
            // Handle location update
        }
    }
}
