//
//  AreasResponse.swift
//
//
//  Created by Adam Duflo on 3/6/22.
//

public struct AreasResponse: Codable {
    public let areas: Areas
    
    public init(areas: Areas) {
        self.areas = areas
    }
}
