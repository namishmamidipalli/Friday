//
//  LocationManager.swift
//  Friday
//
//  Created by Namish Mamidipalli on 10/15/23.
//
import MapKit
import Foundation

@MainActor
class LocationManager: NSObject, ObservableObject {
    @Published var location: CLLocation?
//    static let shared = LocationManager()
    @Published var region = MKCoordinateRegion()
    
    private let manager = CLLocationManager()
    
    override init() {
        super.init()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        manager.delegate = self
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        self.location = location
        self.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
        
         
    }
    
}
