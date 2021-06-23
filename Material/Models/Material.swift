//
//  Material.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

struct ExpandMaterial: Identifiable, Codable, Hashable {
    var id: Int
    var name = ""
    var materials: [ExpandMaterial]?
}
