//
//  NetworkClient.swift
//  DependenciesFromCocoapods
//
//  Created by Vadim Belotitskiy on 10/27/20.
//

import Foundation
import MyNetwork
import Alamofire

final class NetworkClient: MyNetrworkClient {
    func get<Parameters: Encodable?>(
        url: URL,
        headers: [String : String],
        body: Parameters?,
        completion: @escaping (Result<Data?, Error>) -> Void
    ) {
        AF.request(
            url,
            method: .get,
            parameters: body,
            encoder: URLEncodedFormParameterEncoder.default,
            headers: .init(headers)
        ).response { response in
            if let error = response.error {
                completion(.failure(error))
            } else {
                completion(.success(response.data))
            }
        }
    }

    func post<Parameters: Encodable?>(
        url: URL,
        headers: [String : String],
        body: Parameters?,
        completion: @escaping (Result<Data?, Error>) -> Void
    ) {
        AF.request(
            url,
            method: .post,
            parameters: body,
            encoder: JSONParameterEncoder.default,
            headers: .init(headers)
        ).response { response in
            if let error = response.error {
                completion(.failure(error))
            } else {
                completion(.success(response.data))
            }
        }
    }
}
