//
//  centerModifier.swift
//  Africa
//
//  Created by ebtehal Sahli on 30/12/2022.
//

import SwiftUI

struct centerModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
            
        }
    }
}
