//
//  String+Pathed.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

extension String {
    public func pathed(_ component: String...) -> String { self + (self.last == "/" ? "" : "/") + component.joined(separator: "/") }
}
