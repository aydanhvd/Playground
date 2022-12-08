//
//  Bundle+Extension.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation

extension Bundle {
    public func decode<T: Decodable>(
        _ type: T.Type,
        from file: String,
        dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys
    ) -> T {
        guard let url = self.url(forResource: file, withExtension: nil)
        else {
            fatalError("Failed to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url)
        else {
            fatalError("Failed to load \(file) in bundle")
        }
        let decoder = JSONDecoder()

        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy

        guard let decodedData = try? decoder.decode(T.self, from: data)
        else {
            fatalError("Failed to decode \(file) in bundle")
        }
        return decodedData
    }
}
