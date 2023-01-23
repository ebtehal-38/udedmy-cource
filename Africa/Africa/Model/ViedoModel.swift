//
//  ViedoModel.swift
//  Africa
//
//  Created by ebtehal Sahli on 24/12/2022.
//

import Foundation

struct video: Codable , Identifiable {
    let id: String
    let name: String
    let headline: String
    
    
    // Computed Proparty
    var thumbnail: String {
        "video-\(id)"
    }
}
