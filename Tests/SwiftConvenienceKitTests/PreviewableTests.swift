//
//  PreviewableTests.swift
//  
//
//  Created by Yudai Y on 2022/10/17.
//

import XCTest
@testable import SwiftConvenienceKit

private struct TestPreviewable: Previewable {
    var text: String = "Hello, Previewable"
    
    static var preview: TestPreviewable {
        TestPreviewable()
    }
    
}

final class PreviewableTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPreview() throws {
        let testPreview = TestPreviewable.preview
        
        XCTAssertEqual(testPreview.text, "Hello, Previewable")
    }
    
    func testPreviews() throws {
        let testPreviews = TestPreviewable.previews
        
        XCTAssertEqual(testPreviews[0].text, "Hello, Previewable")
        
        XCTAssertEqual(testPreviews[4].text, "Hello, Previewable")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
