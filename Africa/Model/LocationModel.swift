//
//  LocationModel.swift
//  Africa
//
//  Created by ebtehal Sahli on 25/12/2022.
//

import Foundation
import MapKit

struct NtationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //: Computed Proparty
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
    }
}
