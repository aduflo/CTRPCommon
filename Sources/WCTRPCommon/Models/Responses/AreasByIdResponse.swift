//
//  AreasByIdResponse.swift
//
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

public struct AreasByIdResponse: Codable {
    public let id: UUID
    
    public init(id: UUID) {
        self.id = id
    }
}
