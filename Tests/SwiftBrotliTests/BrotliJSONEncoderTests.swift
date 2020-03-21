import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        let encoder = BrotliJSONEncoder()
        if #available(OSX 10.15, *) {
            encoder.jsonEncoder.outputFormatting = [.withoutEscapingSlashes, .prettyPrinted]
        } else {
            encoder.jsonEncoder.outputFormatting = .prettyPrinted
        }
        
        let result: Result<Data, Error> = encoder.encode(brotliDecodedModel)
        
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
    }
}
