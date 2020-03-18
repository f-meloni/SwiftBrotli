var brotliDecodedModel: SPMCoverage {
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

struct SPMCoverage: Codable, Equatable {
    let data: [Data]
}

extension SPMCoverage {
    struct Data: Codable, Equatable {
        let files: [CoverageFile]
    }
}

extension SPMCoverage.Data {
    struct CoverageFile: Codable, Equatable {
        let filename: String
        let summary: Summary
    }
}

extension SPMCoverage.Data.CoverageFile {
    struct Summary: Codable, Equatable {
        let lines: Lines
    }
}

extension SPMCoverage.Data.CoverageFile.Summary {
    struct Lines: Codable, Equatable {
        let count: Int
        let covered: Int
        let percent: Float
    }
}
