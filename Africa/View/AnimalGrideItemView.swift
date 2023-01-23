//
//  AnimalGrideItemView.swift
//  Africa
//
//  Created by ebtehal Sahli on 29/12/2022.
//

import SwiftUI

struct AnimalGrideItemView: View {
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGrideItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        AnimalGrideItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
