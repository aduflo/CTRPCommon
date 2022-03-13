//
//  String+Pathed.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

import Foundation

extension String {
    /// Appends `component` to `self` in a path-esque manner.
    public func pathed(_ component: String...) -> String { self + (self.last == "/" ? "" : "/") + component.joined(separator: "/") }
}
