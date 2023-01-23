//
//  CreaditsView.swift
//  Africa
//
//  Created by ebtehal Sahli on 30/12/2022.
//

import SwiftUI

struct CreaditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Robert Pertas
    All right reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } // VSTACK
        .padding()
        .opacity(0.4)
    }
}

struct CreaditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreaditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

