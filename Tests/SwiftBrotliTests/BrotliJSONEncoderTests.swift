import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        let encoder = BrotliJSONEncoder()
        
        let result: Result<Data, Error>
        result = encoder.encode(brotliDecodedModel, outputFormatting: [])
        
        print(String(data: try Brotli().decompress(try result.get()).get(), encoding: .utf8) ?? "")
        
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
    }
}
