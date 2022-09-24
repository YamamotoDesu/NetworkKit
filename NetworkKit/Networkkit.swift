//
//  Networkkit.swift
//  NetworkKit
//
//  Created by 山本響 on 2022/09/24.
//

import Foundation

public class NetworkKitImp {
    
    public init() {}
    
    public func get<T: Decodable>(url: URL) async throws -> T {
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    
    }
    
}
