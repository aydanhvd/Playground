//
//  String+EXT.swift
//  String
//
//  Created by Aydan Haqverdili on 12/26/22.
//  Copyright © 2022 Aydan Haqverdili. All rights reserved.
//

import Foundation

extension String {
  // String extension to decode HTML entities
  var decoded: String {
    let attr = try? NSAttributedString(
      data: Data(utf8),
      options: [
        .documentType: NSAttributedString.DocumentType.html,
        .characterEncoding: String.Encoding.utf8.rawValue
      ],
      documentAttributes: nil)

    return attr?.string ?? self
  }
}
