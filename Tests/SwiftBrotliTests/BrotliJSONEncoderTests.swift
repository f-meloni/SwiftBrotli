import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        let encoder = BrotliJSONEncoder()
        
        let result: Result<Data, Error> = encoder.encode(brotliDecodedModel)
        
        
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
    }
}
