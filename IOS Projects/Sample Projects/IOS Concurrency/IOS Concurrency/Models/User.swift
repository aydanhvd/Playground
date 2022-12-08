//
//  User.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}

struct Address: Codable {
    let street: String
    let suite: String
    let zipcode: String
    let geo: GeoLocation
}

struct GeoLocation: Codable {
    let lat: String
    let lng: String
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}
