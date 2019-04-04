//
//  Utils.swift
//  gaiaApp
//
//  Created by Hugo Medina on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation

class Utils {
    private static var decoder: JSONDecoder? = nil
    
    // Let's make it stay a static class for now
    private init() {}
    
    static func getDecoder() -> JSONDecoder {
        if nil == decoder {
            let format = DateFormatter()
            format.dateFormat = "yyyy-MM-dd HH:mm:ss"
            
            let d = JSONDecoder()
            d.keyDecodingStrategy = .convertFromSnakeCase
            d.dateDecodingStrategy = .formatted(format)
            decoder = d
        }
        
        return decoder!
    }
}
