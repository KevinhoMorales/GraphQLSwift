//
//  NetworkManager.swift
//  GraphQLSwift
//
//  Created by Kevinho Morales on 5/5/25.
//

import Foundation
import Apollo
import ApolloAPI

class NetworkManager {
    static let shared = NetworkManager()
    
    let client = ApolloClient(url: URL(string: "https://meniuz-backend-developmeniuz.up.railway.app/graphql")!)
}
