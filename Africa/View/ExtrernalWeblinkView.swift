//
//  ExtrernalWeblinkView.swift
//  Africa
//
//  Created by ebtehal Sahli on 23/12/2022.
//

import SwiftUI

struct ExtrernalWeblinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                   Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExtrernalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    
    static var previews: some View {
        ExtrernalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
