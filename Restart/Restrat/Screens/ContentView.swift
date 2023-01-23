//
//  ContentView.swift
//  Restrat
//
//  Created by ebtehal Sahli on 13/12/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        ZStack{
            if isOnboardingViewActive{
                onboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 pro")
    }
}
