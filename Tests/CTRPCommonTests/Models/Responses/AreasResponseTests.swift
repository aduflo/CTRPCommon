//
//  AreasResponseTests.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import CTRPCommon
import XCTest

class AreasResponseTests: XCTestCase {
    
    // MARK: init()
    
    func test_init() {
        // Setup
        let areas = Areas()
        let response = AreasResponse(areas: areas)
        
        // Verification
        XCTAssertEqual(response.areas, areas)
    }
}
