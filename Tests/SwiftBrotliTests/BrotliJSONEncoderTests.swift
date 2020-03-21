import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        let encoder = BrotliJSONEncoder()
        
        let result: Result<Data, Error>

        result = encoder.encode(brotliDecodedModel, outputFormatting: [])
        
        #if os(Linux)
        XCTAssertEqual(try result.get(), brotliLinuxModelCompressedData)
        #else
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
        #endif
    }
}

fileprivate var brotliLinuxModelCompressedData: Data {
    return Data([21, 18, 4, 0, 28, 135, 177, 243, 100, 43, 205, 23, 69, 58, 79, 161, 117, 169, 47, 31, 30, 172, 40, 13, 70, 190, 76, 153, 53, 139, 78, 87, 159, 255, 187, 9, 122, 128, 122, 205, 133, 99, 227, 231, 124, 79, 203, 60, 10, 20, 238, 133, 20, 148, 211, 45, 109, 144, 234, 164, 9, 180, 231, 11, 186, 60, 90, 47, 46, 0, 186, 47, 238, 138, 30, 236, 196, 9, 124, 177, 0, 213, 88, 5, 0, 10, 4, 74, 165, 160, 40, 17, 188, 20, 112, 201, 249, 103, 26, 138, 9, 32, 60, 206, 166, 7, 207, 75, 60, 164, 163, 199, 213, 244, 230, 233, 172, 139, 205, 90, 198, 173, 171, 61, 207, 167, 112, 48, 231, 150, 147, 131, 218, 11, 91, 203, 247, 24, 58, 142, 8, 169, 58, 15, 186, 85, 5, 188, 127, 49, 116, 166, 139, 166, 12, 153, 79, 52, 112, 236, 36, 89, 177, 64, 20, 4, 98, 186, 222, 6, 32, 101, 108, 43, 8, 54, 203, 155, 187, 114, 122, 170, 253, 7, 147, 242, 127, 101, 200, 9, 94, 155, 253, 197, 217, 168, 13, 48, 25, 209, 166, 201, 33, 200, 65, 54, 58, 101, 150, 251, 176, 173, 56, 91, 27, 242, 138, 164, 119, 170, 140, 247, 184, 27])
}

