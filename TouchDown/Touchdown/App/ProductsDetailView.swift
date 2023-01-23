//
//  ProductsDetailView.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 02/01/2023.
//

import SwiftUI

struct ProductsDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            // NAVBAR
            NavigationBarDeatailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // DETAIL BUTTON PART
            VStack(alignment: .center,spacing: 0, content: {
                
                // RATING + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProuduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) // SCROLL
                
                // QUANTITY + FAVOURTE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // ADD TO CART
                AddtoCartDetailView()
                    .padding(.bottom, 20)
            }) // VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105 )
            )
        }) // VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProuduct.red,
                  green:shop.selectedProduct?.green ?? sampleProuduct.green,
                  blue:shop.selectedProduct?.blue ?? sampleProuduct.blue
            ) .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
