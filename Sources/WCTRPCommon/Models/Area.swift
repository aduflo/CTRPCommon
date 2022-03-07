//
//  Area.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

public struct Area: Codable {
    let id: String
    let name: String
    let coordinate: Coordinate
    let zone: Zone
    
    public enum Zone: String, CaseIterable, Codable {
        case eastern
        case central
        case mountain
        case pacific
    }
    
    init(id: String,
         name: String,
         coordinate: Coordinate,
         zone: Zone) {
        self.id = id
        self.name = name
        self.coordinate = coordinate
        self.zone = zone
    }
    
    public struct Coordinate: Codable {
        let latitude: String
        let longitude: String
    }
}
