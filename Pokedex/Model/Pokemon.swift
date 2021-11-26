//
//  Pokemon.swift
//  Pokedex
//
//  Created by Bünyamin Kılıçer on 23.11.2021.
//

import Foundation

struct Pokemon: Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let height: Int
    let defense: Int
    let attack: Int
    let weight: Int
}

/*let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Balbasaur", imageUrl: "balbasaur", type: "poison",description: "ss"),
    .init(id: 1, name: "Venusaur", imageUrl: "balbasaur", type: "fire",description: "ss"),
    .init(id: 2, name: "Charmeleon", imageUrl: "balbasaur", type: "poison",description: "ss"),
]*/
