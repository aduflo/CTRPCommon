//
//  AreaTests.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import WCTRPCommon
import XCTest

class AreaTests: XCTestCase {
    
    // MARK: init()
    
    func test_init() {
        // Setup
        let id = UUID()
        let name = "name"
        let coordinate = Coordinate(latitude: "12.34", longitude: "-12.34")
        let zone = Zone.eastern
        let area = Area(id: id,
                        name: name,
                        coordinate: coordinate,
                        zone: zone)
        
        // Verification
        XCTAssertEqual(area.id, id)
        XCTAssertEqual(area.name, name)
        XCTAssertEqual(area.coordinate, coordinate)
        XCTAssertEqual(area.zone, zone)
    }
}
