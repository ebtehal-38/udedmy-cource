//
//  CirclegroupView.swift
//  Restrat
//
//  Created by ebtehal Sahli on 14/12/2022.
//

import SwiftUI

struct CirclegroupView: View {
    // mark property
    
    @State var ShapeColor : Color
    @State var shapeOpacity : Double
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260 , alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260 , alignment: .center)
        }//: ZSTACKE
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true 
        })
    }
}

struct CirclegroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            CirclegroupView(ShapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
