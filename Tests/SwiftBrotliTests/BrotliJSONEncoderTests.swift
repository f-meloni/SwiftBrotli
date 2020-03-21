import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        let encoder = BrotliJSONEncoder()
        encoder.jsonEncoder.outputFormatting = .prettyPrinted
        
        let result: Result<Data, Error> = encoder.encode(brotliDecodedModel)
        
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
    }
}
