//
//  Network.swift
//  gaiaApp
//
//  Created by Hugo Medina on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//
import Foundation

typealias NetworkError = Network.NetworkErrorEnum

class Network {
    static let apiUrl = "http://10.93.182.93:8080/"
    
    enum NetworkErrorEnum: Error {
        case noData(_ error: String)
        case jsonParsingFail(_ error: String)
        case http(_ error: String)
        case generic(_ error: Any)
        case urlFormating(_ error: String)
    }
    
    static func getContent<T: Codable>(urlRequest: URLRequest, decodable: T.Type, completion: @escaping (T?, NetworkErrorEnum?)->Void) {
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: urlRequest) {
            data, response, error in
            
            guard let data = data else {
                completion(nil, .noData("No data was found at url \(urlRequest.description)"))
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                completion(nil, .generic("No response received"))
                return
            }
            
            guard response.statusCode < 300 else {
                completion(nil, .http("HTTP Status Code : \(response.statusCode)"))
                return
            }
            
            let decoder = Utils.getDecoder()
            do {
                let _ = try decoder.decode(decodable, from: data)
            } catch {
                print(error)
            }
            if let d = try? decoder.decode(decodable, from: data) {
                completion(d, nil)
            } else {
                completion(nil, .jsonParsingFail("Couldn't parse json"))
            }
        }
        
        task.resume()
    }
}
