//
//  Area.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

public struct Area: Codable {
    public let id: String
    public let name: String
    public let coordinate: Coordinate
    public let zone: Zone
    
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
