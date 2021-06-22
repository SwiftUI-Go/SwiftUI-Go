//
//  MaterialCell.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

struct MaterialCell: View {
    var title = ""
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(self.title)
    }
}

struct MaterialCell_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCell("标题")
    }
}
