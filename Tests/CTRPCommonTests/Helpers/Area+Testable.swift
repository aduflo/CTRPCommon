//
//  Area+Testable.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import CTRPCommon

extension Area: Equatable {
    public static func == (lhs: Area, rhs: Area) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name && lhs.coordinate == rhs.coordinate && lhs.zone == rhs.zone
    }
}

extension Coordinate: Equatable {
    public static func == (lhs: Coordinate, rhs: Coordinate) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
