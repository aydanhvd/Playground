//
//  JokeType.swift
//  DadJokes
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation

enum JokeType: String, Codable, CaseIterable {
    case chucknorris = "Chuck Norris"
    case dadjoke = "Dad Joke"
    case random = "Random"
    case yomama = "Yo Mama"

    var type: String {
        switch self {
        case .chucknorris:
            return "chucknorris"
        case .dadjoke:
            return "dadjoke"
        case .random:
            return "random"
        case .yomama:
            return "yomama"
        }
    }
}
