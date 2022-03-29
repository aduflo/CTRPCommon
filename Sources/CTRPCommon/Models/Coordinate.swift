//
//  Coordinate.swift
//  
//
//  Created by Adam Duflo on 3/13/22.
//

import Foundation

public struct Coordinate: Codable {
    public let latitude: String
    public let longitude: String
    
    public init(latitude: String,
                longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
