//
//  InsetFactView.swift
//  Africa
//
//  Created by ebtehal Sahli on 23/12/2022.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } // :groupbox
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
