//
//  Joke.swift
//  DadJokes
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation


struct Joke: Codable {
    let status: Int
    let response: String
    let joke: String
    let type: String
}
