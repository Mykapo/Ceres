//
//  User.swift
//  gaiaApp
//
//  Created by Hugo Medina on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation

class PickleUser {
    static var currentUser : User? = nil
    
    static func getUser(_ user: User? = nil, completion: @escaping (User?, Error?) -> Void) {
        if let cu = currentUser {
            if user == currentUser {
                completion(cu, nil)
                
                return
            }
        }
        
        var uri = ""
        if let u = user,
           let id = u.id {
            uri = "/\(id)"
        }
        
        guard let url = URL(string: Network.apiUrl + uri) else {
            completion(nil, Network.NetworkErrorEnum.urlFormating("impossible to formate \(Network.apiUrl + uri) as url"))
            return
        }
        
        let request = URLRequest(url: url)
        Network.getContent(urlRequest: request, decodable: User.self) {
            user, error in
            
            print("ANYTHINNGGGG PLZZZZZZ")
            
            guard nil == error else {
                completion(nil, error)
                return
            }
            currentUser = user
            completion(currentUser, error)
        }
    }
}

extension User : Equatable {
    public static func ==(lhs: User, rhs: User) -> Bool {
        return  lhs.id == rhs.id
    }
}
