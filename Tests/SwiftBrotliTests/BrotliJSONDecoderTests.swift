import XCTest
@testable import SwiftBrotli

final class BrotliJSONDecoderTests: XCTestCase {
    func testDecode() throws {
        let decoder = BrotliJSONDecoder()
        
        let result: Result<SPMCoverage, Error> = decoder.decode(data: brotliTextCompressedData)
        
        XCTAssertEqual(try result.get(), brotliDecodedModel)
    }
}

