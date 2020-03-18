import XCTest
@testable import SwiftBrotli

final class BrotliJSONDecoderTests: XCTestCase {
    func testDecode() throws {
        let decoder = BrotliJSONDecoder()
        
        let result: Result<SPMCoverage, Error> = decoder.decode(data: brotliGenericCompressedData)
        
        
        XCTAssertEqual(try result.get(), expectedResult)
    }
    
    fileprivate var expectedResult: SPMCoverage? {
        return SPMCoverage(data: [
            SPMCoverage.Data(files:
            [
                SPMCoverage.Data.CoverageFile(filename: "/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/BrotliDecoder.swift",
                                              summary: SPMCoverage.Data.CoverageFile.Summary(lines: SPMCoverage.Data.CoverageFile.Summary.Lines(count: 12, covered: 0, percent: 0.0))),
                SPMCoverage.Data.CoverageFile(filename: "/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift", summary: SPMCoverage.Data.CoverageFile.Summary(lines: SPMCoverage.Data.CoverageFile.Summary.Lines(count: 57, covered: 50, percent: 87.7193))),
                SPMCoverage.Data.CoverageFile(filename: "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliDecompressedData.swift", summary:
                    SPMCoverage.Data.CoverageFile.Summary(lines: SPMCoverage.Data.CoverageFile.Summary.Lines(count: 232, covered: 232, percent: 100.0))),
                SPMCoverage.Data.CoverageFile(filename: "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliGenericCompressedData.swift", summary: SPMCoverage.Data.CoverageFile.Summary(lines: SPMCoverage.Data.CoverageFile.Summary.Lines(count: 3, covered: 3, percent: 100.0))),
                SPMCoverage.Data.CoverageFile(filename: "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliTextCompressedData.swift", summary: SPMCoverage.Data.CoverageFile.Summary(lines: SPMCoverage.Data.CoverageFile.Summary.Lines(count: 3, covered: 3, percent: 100.0))),
                SPMCoverage.Data.CoverageFile(filename: "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift", summary: SPMCoverage.Data.CoverageFile.Summary(lines: SPMCoverage.Data.CoverageFile.Summary.Lines(count: 27, covered: 27, percent: 100.0)))])])
    }
}

fileprivate struct SPMCoverage: Decodable, Equatable {
    let data: [Data]
}

extension SPMCoverage {
    fileprivate struct Data: Decodable, Equatable {
        let files: [CoverageFile]
    }
}

extension SPMCoverage.Data {
    fileprivate struct CoverageFile: Decodable, Equatable {
        let filename: String
        let summary: Summary
    }
}

extension SPMCoverage.Data.CoverageFile {
    fileprivate struct Summary: Decodable, Equatable {
        let lines: Lines
    }
}

extension SPMCoverage.Data.CoverageFile.Summary {
    fileprivate struct Lines: Decodable, Equatable {
        let count: Int
        let covered: Int
        let percent: Float
    }
}
