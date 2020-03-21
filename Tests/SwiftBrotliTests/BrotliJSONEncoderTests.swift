import XCTest
@testable import SwiftBrotli

final class BrotliJSONEncoderTests: XCTestCase {
    func testEncode() throws {
        let encoder = BrotliJSONEncoder()
        
        let result: Result<Data, Error>

        result = encoder.encode(brotliDecodedModel, outputFormatting: [])
        
        print([UInt8](try result.get()))
        
        #if os(Linux)
        XCTAssertEqual(try result.get(), brotliLinuxModelCompressedData)
        #else
        XCTAssertEqual(try result.get(), brotliTextCompressedData)
        #endif
    }
}

fileprivate var brotliLinuxModelCompressedData: Data {
    return Data([21, 19, 4, 64, 28, 135, 177, 155, 165, 53, 229, 23, 199, 162, 200, 104, 115, 125, 37, 126, 6, 159, 86, 41, 77, 196, 27, 71, 190, 76, 153, 165, 14, 203, 221, 212, 205, 7, 192, 80, 231, 198, 181, 168, 11, 116, 140, 1, 28, 81, 23, 40, 135, 9, 6, 143, 235, 175, 187, 142, 176, 251, 81, 12, 243, 54, 197, 207, 162, 24, 108, 134, 144, 25, 248, 68, 46, 136, 225, 16, 144, 75, 79, 122, 200, 253, 54, 103, 119, 229, 82, 147, 192, 125, 47, 227, 31, 191, 215, 191, 47, 185, 32, 231, 234, 177, 174, 164, 195, 221, 212, 151, 125, 7, 13, 4, 106, 15, 12, 232, 17, 65, 67, 15, 2, 169, 8, 34, 29, 129, 32, 120, 227, 192, 243, 63, 172, 181, 132, 45, 43, 229, 59, 137, 16, 11, 3, 22, 200, 72, 19, 86, 168, 23, 44, 228, 1, 34, 137, 105, 57, 35, 174, 35, 147, 179, 50, 129, 228, 143, 15, 222, 5, 105, 243, 55, 228, 150, 20, 130, 218, 82, 90, 13, 232, 62, 42, 197, 22, 200, 243, 78, 104, 98, 141, 214, 23, 191, 216, 99, 252, 215, 104, 131, 137, 219, 149, 193, 209, 146, 239, 194, 187, 43, 146, 100, 87, 97, 170, 254, 176, 58, 65, 251, 82, 192, 157, 175, 35, 32, 233, 98, 101, 28])
}

