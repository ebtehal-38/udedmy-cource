//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 01/01/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                
                Section (
                header: SectionView(rotaeClockwise: false),
                 footer: SectionView(rotaeClockwise: true)
                ) {
                    ForEach(categories){ category in
                        categoryItemView(category: category)
                    }
                }
            }) // GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) // SCROLLVIEW
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
