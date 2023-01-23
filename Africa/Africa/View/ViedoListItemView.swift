//
//  ViedoListItem.swift
//  Africa
//
//  Created by ebtehal Sahli on 24/12/2022.
//

import SwiftUI

struct ViedoListItemView: View {
    
    let video: video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(8)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } // : ZSTACK
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }// : VSTACK
        }// : HSTACK
    }
}

struct ViedoListItem_Previews: PreviewProvider {
    static let videos: [video] = Bundle.main.decode(file: "videos.json")
    
    static var previews: some View {
        ViedoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
