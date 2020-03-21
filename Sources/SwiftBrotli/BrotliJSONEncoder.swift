import Foundation

public struct BrotliJSONEncoder {
    private let brotli = Brotli()
    private let jsonEncoder = JSONEncoder()
    
    public init() {}
    
    public func encode<T: Encodable>(_ object: T) -> Result<Data, Error> {
        #if !os(Linux)
        if #available(tvOS 13.0, OSX 10.15, iOS 13, *) {
            return encode(object, outputFormatting: [.withoutEscapingSlashes])
        } else {
            return encode(object, outputFormatting: [])
        }
        #else
        return encode(object, outputFormatting: [])
        #endif
    }
    
    public func encode<T: Encodable>(_ object: T, outputFormatting: JSONEncoder.OutputFormatting) -> Result<Data, Error> {
        jsonEncoder.outputFormatting = outputFormatting
        return Result { try jsonEncoder.encode(object) }.flatMap { brotli.compress($0, mode: .text).mapError { $0 as Error } }
    }
}
