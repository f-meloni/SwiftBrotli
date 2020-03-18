import Foundation

var brotliDecompressedData: Data {
    return Data("""
    {
        "data": [{
            "files": [{
                "expansions": [],
                "filename": "/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/BrotliDecoder.swift",
                "segments": [
                    [7, 61, 0, true, true],
                    [9, 23, 0, true, true],
                    [9, 38, 0, true, false],
                    [10, 22, 0, true, true],
                    [11, 24, 0, true, true],
                    [11, 82, 0, true, false],
                    [13, 6, 0, false, false]
                ],
                "summary": {
                    "functions": {
                        "count": 4,
                        "covered": 0,
                        "percent": 0
                    },
                    "instantiations": {
                        "count": 4,
                        "covered": 0,
                        "percent": 0
                    },
                    "lines": {
                        "count": 12,
                        "covered": 0,
                        "percent": 0
                    },
                    "regions": {
                        "count": 4,
                        "covered": 0,
                        "notcovered": 4,
                        "percent": 0
                    }
                }
            }, {
                "expansions": [],
                "filename": "/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift",
                "segments": [
                    [5, 141, 1, true, true],
                    [14, 41, 1, true, true],
                    [16, 10, 0, true, true],
                    [16, 16, 0, true, true],
                    [18, 10, 0, true, true],
                    [19, 6, 0, false, false],
                    [24, 90, 2, true, true],
                    [35, 39, 2, true, true],
                    [37, 10, 0, true, true],
                    [37, 16, 0, true, true],
                    [39, 10, 0, true, true],
                    [40, 6, 0, false, false],
                    [49, 57, 2, true, true],
                    [51, 13, 0, true, true],
                    [52, 40, 2, true, false],
                    [53, 13, 1, true, true],
                    [54, 43, 2, true, false],
                    [55, 13, 1, true, true],
                    [56, 40, 2, true, false],
                    [57, 14, 2, true, true],
                    [58, 10, 0, false, false],
                    [63, 44, 2, true, true],
                    [65, 6, 0, false, false],
                    [67, 45, 2, true, true],
                    [69, 6, 0, false, false],
                    [71, 59, 1, true, true],
                    [73, 6, 0, false, false],
                    [87, 57, 1, true, true],
                    [89, 6, 0, false, false],
                    [93, 43, 2, true, true],
                    [95, 6, 0, false, false]
                ],
                "summary": {
                    "functions": {
                        "count": 8,
                        "covered": 8,
                        "percent": 100
                    },
                    "instantiations": {
                        "count": 8,
                        "covered": 8,
                        "percent": 100
                    },
                    "lines": {
                        "count": 57,
                        "covered": 50,
                        "percent": 87.719298245614027
                    },
                    "regions": {
                        "count": 20,
                        "covered": 13,
                        "notcovered": 7,
                        "percent": 65
                    }
                }
            }, {
                "expansions": [],
                "filename": "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliDecompressedData.swift",
                "segments": [
                    [3, 34, 3, true, true],
                    [234, 2, 0, false, false]
                ],
                "summary": {
                    "functions": {
                        "count": 1,
                        "covered": 1,
                        "percent": 100
                    },
                    "instantiations": {
                        "count": 1,
                        "covered": 1,
                        "percent": 100
                    },
                    "lines": {
                        "count": 232,
                        "covered": 232,
                        "percent": 100
                    },
                    "regions": {
                        "count": 1,
                        "covered": 1,
                        "notcovered": 0,
                        "percent": 100
                    }
                }
            }, {
                "expansions": [],
                "filename": "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliGenericCompressedData.swift",
                "segments": [
                    [3, 39, 2, true, true],
                    [5, 2, 0, false, false]
                ],
                "summary": {
                    "functions": {
                        "count": 1,
                        "covered": 1,
                        "percent": 100
                    },
                    "instantiations": {
                        "count": 1,
                        "covered": 1,
                        "percent": 100
                    },
                    "lines": {
                        "count": 3,
                        "covered": 3,
                        "percent": 100
                    },
                    "regions": {
                        "count": 1,
                        "covered": 1,
                        "notcovered": 0,
                        "percent": 100
                    }
                }
            }, {
                "expansions": [],
                "filename": "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliTextCompressedData.swift",
                "segments": [
                    [3, 36, 1, true, true],
                    [5, 2, 0, false, false]
                ],
                "summary": {
                    "functions": {
                        "count": 1,
                        "covered": 1,
                        "percent": 100
                    },
                    "instantiations": {
                        "count": 1,
                        "covered": 1,
                        "percent": 100
                    },
                    "lines": {
                        "count": 3,
                        "covered": 3,
                        "percent": 100
                    },
                    "regions": {
                        "count": 1,
                        "covered": 1,
                        "notcovered": 0,
                        "percent": 100
                    }
                }
            }, {
                "expansions": [],
                "filename": "/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift",
                "segments": [
                    [5, 34, 1, true, true],
                    [10, 24, 1, true, true],
                    [10, 30, 1, true, false],
                    [10, 32, 1, true, true],
                    [10, 64, 1, true, false],
                    [11, 6, 0, false, false],
                    [13, 32, 1, true, true],
                    [18, 24, 1, true, true],
                    [18, 30, 1, true, false],
                    [18, 32, 1, true, true],
                    [18, 69, 1, true, false],
                    [19, 6, 0, false, false],
                    [21, 44, 1, true, true],
                    [26, 24, 1, true, true],
                    [26, 30, 1, true, false],
                    [26, 32, 1, true, true],
                    [26, 66, 1, true, false],
                    [27, 6, 0, false, false]
                ],
                "summary": {
                    "functions": {
                        "count": 9,
                        "covered": 9,
                        "percent": 100
                    },
                    "instantiations": {
                        "count": 9,
                        "covered": 9,
                        "percent": 100
                    },
                    "lines": {
                        "count": 27,
                        "covered": 27,
                        "percent": 100
                    },
                    "regions": {
                        "count": 9,
                        "covered": 9,
                        "notcovered": 0,
                        "percent": 100
                    }
                }
            }],
            "functions": [{
                "count": 0,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/BrotliDecoder.swift"],
                "name": "$s11SwiftBrotli0B7DecoderV6decode4datas6ResultOyxs5Error_pG10Foundation4DataV_tSeRzSERzlF",
                "regions": [
                    [7, 61, 13, 6, 0, 0, 0, 0]
                ]
            }, {
                "count": 0,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/BrotliDecoder.swift"],
                "name": "$s11SwiftBrotli0B7DecoderV6decode4datas6ResultOyxs5Error_pG10Foundation4DataV_tSeRzSERzlFsAH_pAA0B0V013DecompressionG0OXEfU_",
                "regions": [
                    [9, 23, 9, 38, 0, 0, 0, 0]
                ]
            }, {
                "count": 0,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/BrotliDecoder.swift"],
                "name": "$s11SwiftBrotli0B7DecoderV6decode4datas6ResultOyxs5Error_pG10Foundation4DataV_tSeRzSERzlFAiLXEfU0_",
                "regions": [
                    [10, 22, 12, 14, 0, 0, 0, 0]
                ]
            }, {
                "count": 0,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/BrotliDecoder.swift"],
                "name": "$s11SwiftBrotli0B7DecoderV6decode4datas6ResultOyxs5Error_pG10Foundation4DataV_tSeRzSERzlFAiLXEfU0_xyKXEfU_",
                "regions": [
                    [11, 24, 11, 82, 0, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$s11SwiftBrotli0B0V10decompress_23maximumDecompressedSizes6ResultOy10Foundation4DataVAC18DecompressionErrorOGAJ_SitF",
                "regions": [
                    [5, 141, 19, 6, 1, 0, 0, 0],
                    [14, 41, 16, 10, 1, 0, 0, 0],
                    [16, 10, 19, 6, 0, 0, 0, 0],
                    [16, 16, 18, 10, 0, 0, 0, 0],
                    [18, 10, 19, 6, 0, 0, 0, 0]
                ]
            }, {
                "count": 2,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$s11SwiftBrotli0B0V8compress_7quality5lgwin4modes6ResultOy10Foundation4DataVAC16CompressionErrorOGAL_s5Int32VAqC11EncoderModeOtF",
                "regions": [
                    [24, 90, 40, 6, 2, 0, 0, 0],
                    [35, 39, 37, 10, 2, 0, 0, 0],
                    [37, 10, 40, 6, 0, 0, 0, 0],
                    [37, 16, 39, 10, 0, 0, 0, 0],
                    [39, 10, 40, 6, 0, 0, 0, 0]
                ]
            }, {
                "count": 2,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$s11SwiftBrotli0B0V11EncoderModeO12encoderValue33_130260C40066D1A9C4FA2143E68C31C8LLSo0bcD0Vvg",
                "regions": [
                    [49, 57, 58, 10, 2, 0, 0, 0],
                    [51, 13, 52, 40, 0, 0, 0, 0],
                    [53, 13, 54, 43, 1, 0, 0, 0],
                    [55, 13, 56, 40, 1, 0, 0, 0],
                    [57, 14, 58, 10, 2, 0, 0, 0]
                ]
            }, {
                "count": 2,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$s11SwiftBrotli0B0V13defaultWindows5Int32VvgZ",
                "regions": [
                    [63, 44, 65, 6, 2, 0, 0, 0]
                ]
            }, {
                "count": 2,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$s11SwiftBrotli0B0V14defaultQualitys5Int32VvgZ",
                "regions": [
                    [67, 45, 69, 6, 2, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$s11SwiftBrotli0B0V30defaultMaximumDecompressedSizeSivgZ",
                "regions": [
                    [71, 59, 73, 6, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$sSo19BrotliDecoderResulta05SwiftA0E7success33_130260C40066D1A9C4FA2143E68C31C8LLABvgZ",
                "regions": [
                    [87, 57, 89, 6, 1, 0, 0, 0]
                ]
            }, {
                "count": 2,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Sources/SwiftBrotli/SwiftBrotli.swift"],
                "name": "$ss5Int32V11SwiftBrotliE7success33_130260C40066D1A9C4FA2143E68C31C8LLABvgZ",
                "regions": [
                    [93, 43, 95, 6, 2, 0, 0, 0]
                ]
            }, {
                "count": 3,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliDecompressedData.swift"],
                "name": "$s16SwiftBrotliTests22brotliDecompressedData10Foundation0F0Vvg",
                "regions": [
                    [3, 34, 234, 2, 3, 0, 0, 0]
                ]
            }, {
                "count": 2,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliGenericCompressedData.swift"],
                "name": "$s16SwiftBrotliTests27brotliGenericCompressedData10Foundation0G0Vvg",
                "regions": [
                    [3, 39, 5, 2, 2, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/Resources/BrotliTextCompressedData.swift"],
                "name": "$s16SwiftBrotliTests24brotliTextCompressedData10Foundation0G0Vvg",
                "regions": [
                    [3, 36, 5, 2, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C14testDecompressyyKF",
                "regions": [
                    [5, 34, 11, 6, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C14testDecompressyyKFs6ResultOy10Foundation4DataV0aB00B0V18DecompressionErrorOGyKXEfu_",
                "regions": [
                    [10, 24, 10, 30, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C14testDecompressyyKFs6ResultOy10Foundation4DataV0aB00B0V18DecompressionErrorOGyKXEfu0_",
                "regions": [
                    [10, 32, 10, 64, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C12testCompressyyKF",
                "regions": [
                    [13, 32, 19, 6, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C12testCompressyyKFs6ResultOy10Foundation4DataV0aB00B0V16CompressionErrorOGyKXEfu_",
                "regions": [
                    [18, 24, 18, 30, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C12testCompressyyKFs6ResultOy10Foundation4DataV0aB00B0V16CompressionErrorOGyKXEfu0_",
                "regions": [
                    [18, 32, 18, 69, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C24testCompressWithModeTextyyKF",
                "regions": [
                    [21, 44, 27, 6, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C24testCompressWithModeTextyyKFs6ResultOy10Foundation4DataV0aB00B0V16CompressionErrorOGyKXEfu_",
                "regions": [
                    [26, 24, 26, 30, 1, 0, 0, 0]
                ]
            }, {
                "count": 1,
                "filenames": ["/Users/franco/Projects/SwiftBrotli/Tests/SwiftBrotliTests/SwiftBrotliTests.swift"],
                "name": "$s16SwiftBrotliTests0bC0C24testCompressWithModeTextyyKFs6ResultOy10Foundation4DataV0aB00B0V16CompressionErrorOGyKXEfu0_",
                "regions": [
                    [26, 32, 26, 66, 1, 0, 0, 0]
                ]
            }],
            "totals": {
                "functions": {
                    "count": 24,
                    "covered": 20,
                    "percent": 83.333333333333343
                },
                "instantiations": {
                    "count": 24,
                    "covered": 20,
                    "percent": 83.333333333333343
                },
                "lines": {
                    "count": 334,
                    "covered": 315,
                    "percent": 94.311377245508993
                },
                "regions": {
                    "count": 36,
                    "covered": 25,
                    "notcovered": 11,
                    "percent": 69.444444444444443
                }
            }
        }],
        "type": "llvm.coverage.json.export",
        "version": "2.0.0"
    }
    """.utf8)
}
