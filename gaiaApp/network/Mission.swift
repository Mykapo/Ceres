//
//  Mission.swift
//  gaiaApp
//
//  Created by Hugo Medina on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation

class PickleMission {
    static func getNextMission(for user: User, completion: @escaping (User?, Error?) -> Void) {
        let uri = "/\(user.id!)/missions/new"
        
        guard let url = URL(string: Network.apiUrl + uri) else {
            completion(nil, NetworkError.urlFormating("impossible to formate \(Network.apiUrl + uri) as url"))
        }
    }
}
