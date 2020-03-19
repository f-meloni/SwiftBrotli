# SwiftBrotli

![Swift 5.2](https://img.shields.io/badge/Swift-5.2-blue.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

A lightweight Swift wrapper for Google's [brotli](https://github.com/google/brotli)

### What is Brotli?
Brotli is a generic-purpose lossless compression algorithm that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling, with a compression ratio comparable to the best currently available general-purpose compression methods. It is similar in speed with deflate but offers more dense compression.

The specification of the Brotli Compressed Data Format is defined in [RFC 7932](https://tools.ietf.org/html/rfc7932).

### Why use Brotli?
Brotli uses a dictionary of common keywords and phrases on both client and server side and thus gives a better compression ratio for text data.

### Usage


#### Compress data
```swift
let brotli = Brotli()
brotli.compress(data)
```

#### Decompress data
```swift
let brotli = Brotli()
brotli.decompress(data)
```

#### Encode JSON object
```swift
let brotli = BrotliJSONEncoder()
brotli.encode(object)
```

#### Decode JSON object
```swift
let brotli = BrotliJSONDecoder()
let result: Result<Object, Error> = brotli.decode(object)
```

#### Articles and comparisons:
- https://medium.com/oyotech/how-brotli-compression-gave-us-37-latency-improvement-14d41e50fee4
- https://expeditedsecurity.com/blog/nginx-brotli/
- https://wp-rocket.me/blog/brotli-vs-gzip-compression/
