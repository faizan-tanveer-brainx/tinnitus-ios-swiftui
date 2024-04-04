//
//  Repository.swift
//  BaseCode
//
//  Created by  on 23/01/2023.
//

import Foundation

class Repository {
    
    func decodeData<T: Decodable>(_ data: Data, to type: T.Type) throws -> T {
        let decoder = JSONDecoder()
        if let error = try? decoder.decode(AppError.self, from: data) {
            throw error
        }
        return try decoder.decode(type, from: data)
    }
}
