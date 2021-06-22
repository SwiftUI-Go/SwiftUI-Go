//
//  Material.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import Foundation

struct Material: Identifiable {
    let id = UUID()
    var name = ""
    var icon = ""
}

struct SectionMaterial: Identifiable {
    let id = UUID()
    var title = ""
    var materials: [Material]?
}
