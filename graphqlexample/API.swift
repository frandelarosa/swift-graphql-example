// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// The current releasing status of the media
public enum MediaStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Has completed and is no longer being released
  case finished
  /// Currently releasing
  case releasing
  /// To be released at a later date
  case notYetReleased
  /// Ended before the work could be finished
  case cancelled
  /// Version 2 only. Is currently paused from releasing and will resume at a later date
  case hiatus
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FINISHED": self = .finished
      case "RELEASING": self = .releasing
      case "NOT_YET_RELEASED": self = .notYetReleased
      case "CANCELLED": self = .cancelled
      case "HIATUS": self = .hiatus
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .finished: return "FINISHED"
      case .releasing: return "RELEASING"
      case .notYetReleased: return "NOT_YET_RELEASED"
      case .cancelled: return "CANCELLED"
      case .hiatus: return "HIATUS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaStatus, rhs: MediaStatus) -> Bool {
    switch (lhs, rhs) {
      case (.finished, .finished): return true
      case (.releasing, .releasing): return true
      case (.notYetReleased, .notYetReleased): return true
      case (.cancelled, .cancelled): return true
      case (.hiatus, .hiatus): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaStatus] {
    return [
      .finished,
      .releasing,
      .notYetReleased,
      .cancelled,
      .hiatus,
    ]
  }
}

public final class Top50Query: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query top50 {
      Page {
        __typename
        media {
          __typename
          title {
            __typename
            english
            native
          }
          episodes
          status
          averageScore
          duration
          averageScore
          bannerImage
          description
        }
      }
    }
    """

  public let operationName: String = "top50"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .object(Title.selections)),
            GraphQLField("episodes", type: .scalar(Int.self)),
            GraphQLField("status", type: .scalar(MediaStatus.self)),
            GraphQLField("averageScore", type: .scalar(Int.self)),
            GraphQLField("duration", type: .scalar(Int.self)),
            GraphQLField("averageScore", type: .scalar(Int.self)),
            GraphQLField("bannerImage", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: Title? = nil, episodes: Int? = nil, status: MediaStatus? = nil, averageScore: Int? = nil, duration: Int? = nil, bannerImage: String? = nil, description: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Media", "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "episodes": episodes, "status": status, "averageScore": averageScore, "duration": duration, "bannerImage": bannerImage, "description": description])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The official titles of the media in various languages
        public var title: Title? {
          get {
            return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "title")
          }
        }

        /// The amount of episodes the anime has when complete
        public var episodes: Int? {
          get {
            return resultMap["episodes"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "episodes")
          }
        }

        /// The current releasing status of the media
        public var status: MediaStatus? {
          get {
            return resultMap["status"] as? MediaStatus
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        /// A weighted average score of all the user's scores of the media
        public var averageScore: Int? {
          get {
            return resultMap["averageScore"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "averageScore")
          }
        }

        /// The general length of each anime episode in minutes
        public var duration: Int? {
          get {
            return resultMap["duration"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "duration")
          }
        }

        /// The banner image of the media
        public var bannerImage: String? {
          get {
            return resultMap["bannerImage"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bannerImage")
          }
        }

        /// Short description of the media's story and characters
        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public struct Title: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaTitle"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("english", type: .scalar(String.self)),
              GraphQLField("native", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(english: String? = nil, native: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaTitle", "english": english, "native": native])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The official english title
          public var english: String? {
            get {
              return resultMap["english"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "english")
            }
          }

          /// Official title in it's native language
          public var native: String? {
            get {
              return resultMap["native"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "native")
            }
          }
        }
      }
    }
  }
}
