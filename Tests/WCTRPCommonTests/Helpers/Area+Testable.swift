//
//  File.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import WCTRPCommon

extension Area.Coordinate: Equatable {
    public static func == (lhs: Area.Coordinate, rhs: Area.Coordinate) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
