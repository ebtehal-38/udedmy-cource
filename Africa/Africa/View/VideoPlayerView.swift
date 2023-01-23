//
//  VideoPlayerView.swift
//  Africa
//
//  Created by ebtehal Sahli on 24/12/2022.
//

import SwiftUI
import AVKit


struct VideoPlayerView: View {
    
   var videoSelected: String
   var videoTitle: String
    
    var body: some View {
       
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormate: "mp4")) {
               // Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
            , alignment: .trailing
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)

    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
        }
       
    }
}
