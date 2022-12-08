//
//  Post.swift
//  IOS Concurrency
//
//  Created by Aydan Haqverdili on 12/2/22.
//

import Foundation

struct Post: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
