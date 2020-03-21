import Foundation

public struct BrotliJSONDecoder {
    private let brotli = Brotli()
    private let jsonDecoder = JSONDecoder()
    
    public func decode<T: Decodable>(data: Data) -> Result<T, Error> {
        brotli.decompress(data)
            .mapError { $0 as Error }
            .flatMap { decompressedData in
                Result { try jsonDecoder.decode(T.self, from: decompressedData) }
            }
    }
}
