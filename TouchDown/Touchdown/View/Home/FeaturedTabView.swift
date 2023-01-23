//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 01/01/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } // TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 14 pro")
            .background(Color.gray)
    }
}
