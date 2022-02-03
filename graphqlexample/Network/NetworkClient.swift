//
//  NetworkClient.swift
//  graphqlexample
//
//  Created by Fran on 31/1/22.
//

import Foundation
import Apollo

class NetworkClient {
    
    static let shared = NetworkClient()
    lazy var apollo = ApolloClient(url: URL(string: "https://graphql.anilist.co")!)
    
}
