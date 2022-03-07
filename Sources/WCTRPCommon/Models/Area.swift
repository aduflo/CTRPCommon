//
//  Area.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

public struct Area: Codable {
    public let id: String
    public let name: String
    public let coordinate: Coordinate
    public let zone: Zone
    
    public struct Coordinate: Codable {
        let latitude: String
        let longitude: String
    }
    
    public enum Zone: String, CaseIterable, Codable {
        case eastern
        case central
        case mountain
        case pacific
    }
    
    public init(id: String,
                name: String,
                coordinate: Coordinate,
                zone: Zone) {
        self.id = id
        self.name = name
        self.coordinate = coordinate
        self.zone = zone
    }
}
