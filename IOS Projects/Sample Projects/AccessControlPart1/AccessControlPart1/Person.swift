//
//  Person.swift
//  AccessControlPart1
//
//  Created by Stewart Lynch on 2020-05-30.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import Foundation

class Person {
   fileprivate var id: String = "SecretID"

    func displayID()-> String {
        id
    }
}

class Management {
    static func updateID(for person: Person, with newID: String) {
        person.id = newID
    }
}
