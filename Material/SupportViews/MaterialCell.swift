//
//  MaterialCell.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

struct MaterialCell: View {
    var material: ExpandMaterial?
    init(_ material: ExpandMaterial?) {
        self.material = material
    }
    var body: some View {
        Text(self.material?.name ?? "")
    }
}

struct MaterialCell_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCell(ExpandMaterial(id: -1, name: "题目"))
    }
}
