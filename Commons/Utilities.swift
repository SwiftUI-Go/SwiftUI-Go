//
//  Utilities.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/24.
//

import Foundation
import PerfectMarkdown

extension String {
    public func toUrl() -> URL? {
        if self.hasPrefix("http") {
            return URL(string: self)
        } else {
            return Bundle.main.url(forResource: self, withExtension: nil)
        }
    }
}

extension URL {
    public func fileContent() -> String? {
        if self.isFileURL {
            do {
                let data = try Data(contentsOf: self)
                return String(data: data, encoding: .utf8)
            } catch {
                return nil
            }
        }
        return nil
    }
}

extension Data {
    public func toString() -> String? {
        return String(data: self, encoding: .utf8)
    }
}
