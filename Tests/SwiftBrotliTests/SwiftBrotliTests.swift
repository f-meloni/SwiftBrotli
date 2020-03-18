import XCTest
@testable import SwiftBrotli

final class BrotliTests: XCTestCase {
    func testDecompress() throws {
        let brotli = Brotli()
        
        let result = brotli.decompress(brotliGenericCompressedData)
        
        XCTAssertEqual(result, .success(brotliDecompressedData))
    }
    
    func testCompress() throws {
        let brotli = Brotli()
        
        let result = brotli.compress(Data(brotliDecompressedData))
        
        XCTAssertEqual(result, .success(brotliGenericCompressedData))
    }
    
    func testCompressWithModeText() throws {
        let brotli = Brotli()
        
        let result = brotli.compress(Data(brotliDecompressedData), mode: .text)
        
        XCTAssertEqual(result, .success(brotliTextCompressedData))
    }
}
