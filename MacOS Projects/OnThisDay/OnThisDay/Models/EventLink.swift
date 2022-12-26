//
//  EventLink.swift
//  EventLink
//
//  Created by Aydan Haqverdili on 12/19/22.
//


import Foundation

struct EventLink: Decodable, Identifiable {
  let id: UUID
  let title: String
  let url: URL
}
