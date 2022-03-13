//
//  Encodable+TransformedTests.swift
//  
//
//  Created by Adam Duflo on 3/11/22.
//

@testable import WCTRPCommon
import XCTest

fileprivate struct TestableEncodable: Encodable {
    let id: String
}

class Encodable_TransformedTests: XCTestCase {
    
    // MARK: toJSONString()
    
    func test_toJSONString() {
        // Setup
        let encodable = TestableEncodable(id: "id")
        
        // Scenario
        let stringedEncodable = encodable.toJSONString()
        
        // Verification
        XCTAssertEqual(stringedEncodable, "{\"id\":\"id\"}")
    }
}
