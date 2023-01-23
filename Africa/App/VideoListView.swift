//
//  VideoListView.swift
//  Africa
//
//  Created by ebtehal Sahli on 21/12/2022.
//

import SwiftUI

struct VideoListView: View {
    
  @State var videos: [video] = Bundle.main.decode(file: "videos.json")
    
    let hapticImpect = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        ViedoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            } //: List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // shuffle videos
                        videos.shuffle()
                        hapticImpect.impactOccurred() 
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            } // : navigation
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
