//
//  AddtoCartDetailView.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 03/01/2023.
//

import SwiftUI

struct AddtoCartDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Spacer()
        }) // BUTOON
        .padding(15)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProuduct.red,
                green:shop.selectedProduct?.green ?? sampleProuduct.green,
                blue:shop.selectedProduct?.blue ?? sampleProuduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddtoCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
