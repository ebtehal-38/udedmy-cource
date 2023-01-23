//
//  FruitModel.swift
//  Fructus
//
//  Created by ebtehal Sahli on 17/12/2022.
//
import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gredientColors: [Color]
    var description: String
    var nutrition: [String]
    
    
}
