//
//  RMService.swift
//  RickAndMorty
//
//  Created by Anil Kumar Shukla on 11/07/25.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// shared singleton instace
    static let shared = RMService()
    /// Privatized constructor
    private init() {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
        case unknown
    }
    
    /// Send Rick and morty API call
    /// - parameters:
    ///  - request: Request Instance
    ///  - type: The type of object we get back
    ///  - completion: call back with data or Error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
        ){
           guard let urlRequest = self.request(from: request) else {
                completion(.failure(RMServiceError.failedToCreateRequest))
                return
            }
            let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(error ?? RMServiceError.failedToGetData))
                    return
                }
                // decode the response in JSON
                do {
                    let result = try JSONDecoder().decode(type.self, from: data)
                    completion(.success(result))
                    //
                }
                catch {
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    
    // MARK: Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
