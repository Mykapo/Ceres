//
//  Codables.swift
//  gaiaApp
//
//  Created by Hugo Medina on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation

// Temp file to ensure easy communication with API
// @todo replace with GaiaCodables lib

public enum Level: Int, Codable {
    case jeunepousse, arbuste, vieuxchene
}

public struct User : Codable {
    public var id: UUID?
    public var email: String?
    public var nickname: String?
    public var password: String?
    public var missions = [Mission]()
    public var level: Level
    public var elo : Elo
    
    public init(
        id: UUID?,
        email: String?,
        nickname: String?,
        password: String?,
        missions: [Mission]?,
        level: Level,
        elo : Elo
        ) {
        self.id = id
        self.email = email
        self.nickname = nickname
        self.password = password
        self.missions = missions ?? []
        self.level = level
        self.elo = elo
    }
}

public struct Mission : Codable {
    public var id: UUID?
    //    let duration: DateInterval?
    public var duration: String?
    public var description: String?
    public var image: String?
    public var mainSubject: String?
    public var explanations: String?
    public var tips : [String]?
    public var elo : Elo
    
    public init(id: UUID?,
                duration: String?,
                description: String?,
                image: String?,
                mainSubject: String?,
                explanations: String?,
                tips : [String]?,
                elo : Elo
        ) {
        self.id = id
        self.duration = duration
        self.description = description
        self.image = image
        self.mainSubject = mainSubject
        self.explanations = explanations
        self.tips  = tips
        self.elo  = elo
    }
}

public struct Elo : Codable {
    public var energy : Int
    public var waste : Int
    public var food : Int
    
    public init(
        energy: Int,
        waste: Int,
        food: Int
        ) {
        self.energy = energy
        self.waste = waste
        self.food = food
    }
}
