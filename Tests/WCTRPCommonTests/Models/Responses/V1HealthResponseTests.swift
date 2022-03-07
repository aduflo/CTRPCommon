//
//  V1HealthResponseTests.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import WCTRPCommon
import XCTest

class V1HealthResponseTests: XCTestCase {
    
    // MARK: init()
    
    func test_init() {
        // Setup
        let message = "message"
        let response = V1HealthResponse(message: message)
        
        // Verification
        XCTAssertEqual(response.message, message)
    }
}
