//
//  Colors.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

extension Color {
    public static let themeColor = Color("ThemeColor")
}

extension Color {
    public static var randomColor:Color {
        get {
            let colors = [Color.red, Color.blue, Color.green, Color.orange, Color.pink]
            let randInt = Int(arc4random() % UInt32(colors.count))
            return colors[randInt]
        }
    }
}
