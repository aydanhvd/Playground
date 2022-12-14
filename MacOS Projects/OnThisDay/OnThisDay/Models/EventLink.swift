//
//  EventLink.swift
//  EventLink
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import Foundation

struct EventLink: Decodable, Identifiable {
  let id: UUID
  let title: String
  let url: URL
}
