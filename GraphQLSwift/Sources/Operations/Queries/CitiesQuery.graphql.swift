// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CitiesQuery: GraphQLQuery {
  public static let operationName: String = "Cities"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Cities { getCities(input: { page: 1 }) { __typename cities { __typename idCity name photoUrl isActive imgHeader } } }"#
    ))

  public init() {}

  public struct Data: GraphQLSwift.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { GraphQLSwift.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getCities", GetCities.self, arguments: ["input": ["page": 1]]),
    ] }

    public var getCities: GetCities { __data["getCities"] }

    /// GetCities
    ///
    /// Parent Type: `GetCitiesResponse`
    public struct GetCities: GraphQLSwift.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { GraphQLSwift.Objects.GetCitiesResponse }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("cities", [City].self),
      ] }

      public var cities: [City] { __data["cities"] }

      /// GetCities.City
      ///
      /// Parent Type: `City`
      public struct City: GraphQLSwift.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { GraphQLSwift.Objects.City }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("idCity", GraphQLSwift.ID.self),
          .field("name", String.self),
          .field("photoUrl", String.self),
          .field("isActive", Bool.self),
          .field("imgHeader", String.self),
        ] }

        public var idCity: GraphQLSwift.ID { __data["idCity"] }
        public var name: String { __data["name"] }
        public var photoUrl: String { __data["photoUrl"] }
        public var isActive: Bool { __data["isActive"] }
        public var imgHeader: String { __data["imgHeader"] }
      }
    }
  }
}
