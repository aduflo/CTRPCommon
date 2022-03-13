//
//  String+PathedTests.swift
//  
//
//  Created by Adam Duflo on 3/6/22.
//

@testable import WCTRPCommon
import XCTest

class String_PathedTests: XCTestCase {
    
    // MARK: pathed()
    
    func test_pathed_with_oneArgument() {
        // Setup
        let path = "base".pathed("1")
        
        // Verification
        XCTAssertEqual(path, "base/1")
    }
    
    func test_pathed_with_oneArgument_and_forwardSlashTerminus() {
        // Setup
        let path = "base/".pathed("1")
        
        // Verification
        XCTAssertEqual(path, "base/1")
    }
    
    func test_pathed_with_oneArgument_and_noBase() {
        // Setup
        let path = "".pathed("1")
        
        // Verification
        XCTAssertEqual(path, "/1")
    }
    
    func test_pathed_with_manyArguments() {
        // Setup
        let path = "base".pathed("1", "2", "3")
        
        // Verification
        XCTAssertEqual(path, "base/1/2/3")
    }
}
