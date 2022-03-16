//
//  AreasByIdResponseTests.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import WCTRPCommon
import XCTest

class AreasByIdResponseTests: XCTestCase {
    
    // MARK: init()
    
    func test_init() {
        // Setup
        let id = UUID()
        let response = AreasByIdResponse(id: id)
        
        // Verification
        XCTAssertEqual(response.id, id)
    }
}
