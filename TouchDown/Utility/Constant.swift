//
//  Constant.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 31/12/2022.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("Data/player")
let categories: [Category] = Bundle.main.decode("Data/category")
let products: [Product] = Bundle.main.decode("Data/product")
let  brands: [Brand] = Bundle.main.decode("Data/brand")
let sampleProuduct: Product = products[0]
// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)
// API
// IMAGE
// FONT
// STRING
// MISC

