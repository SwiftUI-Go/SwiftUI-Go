//
//  Material.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

enum SourceType: String {
    case unkown = "unkown"
    case http = "http"
    case html = "html"
    case markdown = "markdown"
    
    static func sourceType(_ source: String?) -> SourceType {
        guard let sourceName = source else {
            return .unkown
        }
        if sourceName.hasPrefix("http") {
            return .http
        }
        guard let ext = sourceName.split(separator: ".").last else {
            return .unkown
        }
        switch ext {
        case SourceType.html.rawValue:
            return .html
        case SourceType.markdown.rawValue, "md":
            return .markdown
        default:
            return .unkown
        }
    }
}

struct ExpandMaterial: Identifiable, Codable, Hashable {
    var id: Int?
    var name: String?
    var source: String?
    var materials: [ExpandMaterial]?
}

extension ExpandMaterial {
    public func sourceType() -> SourceType {
        return SourceType.sourceType(self.source)
    }
    
    public func sourceUrl() -> URL? {
        switch self.sourceType() {
        case .http:
            return URL(string: self.source ?? "")
        case .html, .markdown:
            return Bundle.main.url(forResource: self.source ?? "", withExtension: nil)
        default:
            return nil
        }
    }
}
