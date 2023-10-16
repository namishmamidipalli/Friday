//
//  FridayApp.swift
//  Friday
//
//  Created by Namish Mamidipalli on 10/8/23.
//

import SwiftUI

@main
struct FridayApp: App {
    @StateObject var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationManager)
        }
    }
}
