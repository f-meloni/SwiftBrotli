import Foundation

struct BrotliJSONEncoder {
    private let brotli = Brotli()
    private let jsonEncoder = JSONEncoder()
    
    func encode<T: Encodable>(_ object: T) -> Result<Data, Error> {
        Result { try jsonEncoder.encode(object) }.flatMap { brotli.compress($0, mode: .text).mapError { $0 as Error } }
    }
}
