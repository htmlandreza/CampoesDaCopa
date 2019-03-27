//
//  WorldCup.swift
//  CampeoesDaCopa
//
//  Created by Andreza Moreira on 22/03/19.
//  Copyright © 2019 Andreza Moreira. All rights reserved.
//

import Foundation

// Codable para construir a partir de um JSON
struct WorldCup: Codable{
    let year: Int
    let country: String
    let winner: String
    let vice: String
    let winnerScore: String
    let viceScore: String
    let matches: [Match]
}

struct Match: Codable {
    let stage: String
    let games: [Game]
}

struct Game: Codable {
    let home: String
    let away: String
    let score: String
    let date: String
}
