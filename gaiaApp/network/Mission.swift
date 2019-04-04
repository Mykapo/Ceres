//
//  Mission.swift
//  gaiaApp
//
//  Created by Hugo Medina on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation

class PickleMission {
    enum EndingResult : String {
        case success
        case failure
    }
    
    static func getNextMissions(for user: User, completion: @escaping (User?, Error?) -> Void) {
        let uri = "/\(user.id!)/missions/new"
        
        guard let url = URL(string: Network.apiUrl + uri) else {
            completion(nil, NetworkError.urlFormating("impossible to formate \(Network.apiUrl + uri) as url"))
            return
        }
        
        let request = URLRequest(url: url)
        Network.getContent(urlRequest: request, decodable: User.self) {
            user, error in
            
            guard nil == error else {
                completion(nil, error)
                return
            }
            
            PickleUser.currentUser?.missions = user?.missions ?? []
            completion(PickleUser.currentUser, error)
        }
    }
    
    static func missionEnded(_ mission: Mission, by user: User, result: EndingResult, completion: @escaping (User?, Error?) -> Void) {
        let uri = "/\(user.id!)/\(mission.id!)/\(result.rawValue)"
        
        guard let url = URL(string: Network.apiUrl + uri) else {
            completion(nil, NetworkError.urlFormating("impossible to formate \(Network.apiUrl + uri) as url"))
            return
        }
        
        let request = URLRequest(url: url)
        Network.getContent(urlRequest: request, decodable: User.self) {
            user, error in
            
            guard nil == error else {
                print(error!.localizedDescription)
                return
            }
            
            PickleUser.currentUser!.elo = user!.elo
            completion(PickleUser.currentUser, nil)
        }
    }
}
