//
//  CoordinateTests.swift
//  
//
//  Created by Adam Duflo on 3/14/22.
//

@testable import WCTRPCommon
import XCTest

class CoordinateTests: XCTestCase {
    
    // MARK: init()
    
    func test_init() {
        // Setup
        let latitude = "latitude"
        let longitude = "latitude"
        let coordinate = Coordinate(latitude: latitude, longitude: longitude)
        
        // Verification
        XCTAssertEqual(coordinate.latitude, latitude)
        XCTAssertEqual(coordinate.longitude, longitude)
    }
}
