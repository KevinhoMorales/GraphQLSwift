//
//  CitiesViewModel.swift
//  GraphQLSwift
//
//  Created by Kevinho Morales on 5/5/25.
//

import Foundation
import Apollo
import ApolloAPI

final class CitiesViewModel {
    
    func getCities() {
        let query = CitiesQuery()
        
        NetworkManager.shared.client.fetch(query: query) { result in
            switch result {
            case .success(let graphQLResult):
                if let cities = graphQLResult.data?.getCities.cities {
                    cities.forEach { city in
                        print(city.imgHeader)
                    }
                } else if let errors = graphQLResult.errors {
                    print("Errores de GraphQL: \(errors)")
                }
            case .failure(let error):
                print("Error de red: \(error)")
            }
        }
    }
}
