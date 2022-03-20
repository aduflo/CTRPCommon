//
//  AreasByIdResponse.swift
//
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

public struct AreasByIdResponse: Codable {
    public let id: UUID
    public let jsonString: String
    
    public init(id: UUID,
                jsonString: String) {
        self.id = id
        self.jsonString = jsonString
    }
}
