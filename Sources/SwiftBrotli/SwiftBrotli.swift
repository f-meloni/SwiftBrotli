import CBrotli
import Foundation

public struct Brotli {
    public func decompress(_ data: Data, maximumDecompressedSize: Int = defaultMaximumDecompressedSize) -> Result<Data, DecompressionError> {
        var decodedBuffer = [UInt8](repeating: 0, count: maximumDecompressedSize)
        var decodedSize: Int = decodedBuffer.count
        
        let decompressResult = BrotliDecoderDecompress(data.count,
                                                       [UInt8](data),
                                                       &decodedSize,
                                                       &decodedBuffer)
        
        if decompressResult == .success {
            return .success(Data(decodedBuffer[0..<decodedSize]))
        } else {
            return .failure(.invalidData)
        }
    }
    
    public func compress(_ data: Data,
                         quality: Int32 = defaultQuality,
                         lgwin: Int32 = defaultWindow,
                         mode: EncoderMode = .generic) -> Result<Data, CompressionError> {
        var encodedBuffer = [UInt8](repeating: 0, count: data.count)
        var encodedSize: Int = encodedBuffer.count
        let compressResult = BrotliEncoderCompress(quality,
                              lgwin,
                              mode.encoderValue,
                              data.count,
                              [UInt8](data),
                              &encodedSize,
                              &encodedBuffer)
        
        if compressResult == .success {
            return .success(Data(encodedBuffer[0..<encodedSize]))
        } else {
            return .failure(.compressionFailed)
        }
    }
}

extension Brotli {
    public enum EncoderMode {
        case font
        case generic
        case text
        
        fileprivate var encoderValue: BrotliEncoderMode {
            switch self {
            case .font:
                return BROTLI_MODE_FONT
            case .generic:
                return BROTLI_MODE_GENERIC
            case .text:
                return BROTLI_MODE_TEXT
            }
        }
    }
}

extension Brotli {
    public static var defaultWindow: Int32 {
        return 19
    }
    
    public static var defaultQuality: Int32 {
        return BROTLI_DEFAULT_QUALITY
    }
    
    public static var defaultMaximumDecompressedSize: Int {
        return 1 << 19
    }
}

extension Brotli {
    public enum CompressionError: Error {
        case compressionFailed
    }
    
    public enum DecompressionError: Error {
        case invalidData
    }
}

extension BrotliDecoderResult {
    fileprivate static var success: BrotliDecoderResult {
        return BROTLI_DECODER_RESULT_SUCCESS
    }
}

extension Int32 {
    fileprivate static var success: Int32 {
        return BROTLI_TRUE
    }
}
