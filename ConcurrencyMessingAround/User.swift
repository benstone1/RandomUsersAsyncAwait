//
//  User.swift
//  User
//
//  Created by Ben Stone on 7/22/21.
//

import Foundation

struct Response: Codable {
    let results: [User]
}

struct User: Codable, Identifiable {
    let name: Name
    var fullName: String {
        return name.first + " " + name.last
    }
    var id: String { fullName }
}

struct Name: Codable {
    let first: String
    let last: String
}
