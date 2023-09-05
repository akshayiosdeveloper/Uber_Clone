//
//  LocationManager.swift
//  UberSwiftUIDemo
//
//  Created by Akshay Kumar on 16/05/23.
//

import CoreLocation

class LocationManager: NSObject ,  ObservableObject {
    private let locationManager = CLLocationManager()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        print("⊨ location\(String(describing: locations.first))")
        
    }
    func locationManager(_ manager: CLLocationManager, monitoringDidFailFor region: CLRegion?, withError error: Error) {
        print("𝌞Error 𝌞 \(error.localizedDescription)")
    }
}

