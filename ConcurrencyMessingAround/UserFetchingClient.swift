//
//  NetworkingClient.swift
//  NetworkingClient
//
//  Created by Ben Stone on 7/22/21.
//

import Foundation

struct UserFetchingClient {
  static private let url = URL(string: "https://randomuser.me/api/?results=10")!
  
  static func getUsers() async throws -> [User] {
    async let (data, _) = URLSession.shared.data(from: url)
    let response = try await JSONDecoder().decode(Response.self, from: data)
    return response.results
  }
}
