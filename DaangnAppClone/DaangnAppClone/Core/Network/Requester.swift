//
//  Requester.swift
//  DaangnAppClone
//
//  Created by Ellen J on 8/29/24.
//

import Foundation

protocol Requester {
    func request(
        urlRequest: URLRequest,
        completion: @escaping (Result<URLSession.Response?, Swift.Error>) -> Void
    )
}

extension URLSession: Requester {
    struct Response {
        let data: Data?
        let status: Int
    }

    func request(
        urlRequest: URLRequest,
        completion: @escaping (Result<Response?, Error>) -> Void
    ) {
        dataTask(with: urlRequest) { data, response, error in
            if let response = response as? HTTPURLResponse, (200..<300).contains(response.statusCode) {
                completion(.success(.init(data: data, status: response.statusCode)))
            } else if let error = error {
                completion(.failure(error))
            } else {
                completion(.failure(NSError(domain: "UnKnown Network Error", code: -999)))
            }
        }.resume()
    }
}
