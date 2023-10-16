//
//  ContentView.swift
//  Friday
//
//  Created by Namish Mamidipalli on 10/8/23.
//
import MapKit
import SwiftUI


struct ContentView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            Text("Location: \n \(locationManager.location?.coordinate.latitude ?? 0.0),  \(locationManager.location?.coordinate.longitude ?? 0.0)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(LocationManager())
}
 
