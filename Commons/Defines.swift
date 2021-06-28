//
//  Defines.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

extension String {
    func localized() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}

enum LocalizeKey: String {
    case appName = "appName"
    case settings = "settings"
    case aboutUs = "aboutUs"
    case demo = "demo"
    case symbols = "symbols"
    case version = "version"
    case play = "play"
    case filter = "filter"
    
    func localized() -> LocalizedStringKey {
        return self.rawValue.localized()
    }
}
