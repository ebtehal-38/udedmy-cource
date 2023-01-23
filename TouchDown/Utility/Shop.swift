//
//  Shop.swift
//  Touchdown
//
//  Created by ebtehal Sahli on 04/01/2023.
//

import Foundation
import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
