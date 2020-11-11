import Foundation

/// Specifies source trees for files
/// Corresponds to the "Location" dropdown in Xcode's File Inspector
/// Projector:
///     This used to be an enum, but it really should just be a string.
///     There should not be a difference between .absolute and .custom("<absolute>")
public struct PBXSourceTree: Hashable {
    /// The underlying string representation
    private let value: String
    
    public init(_ value: String) {
        self.value = value
    }
 
    public static let none: Self = ""
    public static let absolute: Self = "<absolute>"
    public static let group: Self = "<group>"
    public static let sourceRoot: Self = "SOURCE_ROOT"
    public static let buildProductsDir: Self = "BUILT_PRODUCTS_DIR"
    public static let sdkRoot: Self = "SDKROOT"
    public static let developerDir: Self = "DEVELOPER_DIR"
}

extension PBXSourceTree: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.init(value)
    }
}

extension PBXSourceTree: CustomStringConvertible {
    public var description: String { value }
}

// MARK: - Backward Compatability
extension PBXSourceTree {
    public static func custom(_ value: String) -> Self { Self(value) }
}

/*

public enum PBXSourceTree: Decodable {
    public init(from decoder: Decoder) throws {
        try self.init(value: decoder.singleValueContainer().decode(String.self))
    }
}

// MARK: - PBXSourceTree Extension (PlistValue)

extension PBXSourceTree {
    func plist() -> PlistValue {
        .string(CommentedString(String(describing: self)))
    }
}
*/
