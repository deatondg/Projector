import Foundation

/// Class representing an element that may contain other elements.
public struct PBXContainerItem: PBXObject {
    /// User comments for the object.
    public var comments: String?
}


/*
public class PBXContainerItem {
    // MARK: - Decodable

    fileprivate enum CodingKeys: String, CodingKey {
        case comments
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        comments = try container.decodeIfPresent(.comments)
        try super.init(from: decoder)
    }

    func plistValues(proj _: PBXProj, reference _: String) throws -> [CommentedString: PlistValue] {
        var dictionary = [CommentedString: PlistValue]()
        if let comments = comments {
            dictionary["comments"] = .string(CommentedString(comments))
        }
        return dictionary
    }
}
*/
