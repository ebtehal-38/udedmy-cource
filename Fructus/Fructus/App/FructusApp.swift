//
//  FructusApp.swift
//  Fructus
//
//  Created by ebtehal Sahli on 17/12/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnbordingView()
            } else {
                ContentView()
            }
        }
    }
}
