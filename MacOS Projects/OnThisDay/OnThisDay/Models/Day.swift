//
//  Day.swift
//  Day
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import Foundation

struct Day: Decodable {
  let date: String
  let data: [String: [Event]]

  var events: [Event] { data[EventType.events.rawValue] ?? [] }
  var births: [Event] { data[EventType.births.rawValue] ?? [] }
  var deaths: [Event] { data[EventType.deaths.rawValue] ?? [] }

  var displayDate: String {
    date.replacingOccurrences(of: "_", with: " ")
  }
}
