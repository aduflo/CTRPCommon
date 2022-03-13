//
//  Encodable+Transformed.swift
//  
//
//  Created by Adam Duflo on 3/9/22.
//

import Foundation

extension Encodable {
    /// Transforms `self` into a JSON-encoded `String` representation.
    func toJSONString() -> String? {
        guard let data = try? JSONEncoder().encode(self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
}
