//
//  OnbordingView.swift
//  Fructus
//
//  Created by ebtehal Sahli on 17/12/2022.
//

import SwiftUI

struct OnbordingView: View {
    // MARK: - PROPARTIES
    
    var fruit: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruit[0...5]){ item in
                FruitCardView(fruit: item )
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView(fruit: fruitsData)
        
    }
}
