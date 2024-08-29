//
//  API.swift
//  DaangnAppClone
//
//  Created by Ellen J on 8/29/24.
//

import Foundation

protocol API {
    typealias ResponseType = Decodable

    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: [String: String]? { get }
}
