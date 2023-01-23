//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 31/12/2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
