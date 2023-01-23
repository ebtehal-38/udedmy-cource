//
//  FruitDetailView.swift
//  Fructus
//
//  Created by ebtehal Sahli on 18/12/2022.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPARTIES
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack( alignment: .center, spacing: 20){
                    VStack(alignment: .leading, spacing: 20) {
                        // HEADER
                        FruitHeaderView(fruit: fruit)
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gredientColors[1])
                        
                        // HEADLIN
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLIN
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gredientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 20)
                            .padding(.bottom, 40)
                        
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
