//
//  CodableBundleExtention.swift
//  Africa
//
//  Created by ebtehal Sahli on 21/12/2022.
//

import Foundation


extension Bundle {
    func decode<T: Codable>( file: String ) -> T {
        // 1. Locate the json fill
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundel")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from bundel.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property fo the decoded date
        guard let loaded = try? decoder.decode( T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundel.")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}
