import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        #if !os(Linux)
        let encoder = BrotliJSONEncoder()
        
        let result: Result<Data, Error>

        result = encoder.encode(brotliDecodedModel, outputFormatting: [])
        
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
        #endif
    }
}
