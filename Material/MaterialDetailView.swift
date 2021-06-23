//
//  MaterialDetailView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialDetailView: View {
    var material: ExpandMaterial?
    
    init(_ material: ExpandMaterial?) {
        self.material = material
    }
    
    var body: some View {
        List {
            
        }
        .navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
        .navigationBarTitle(Text(material?.name ?? ""))
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView(ExpandMaterial(id: -1, name: "题目"))
    }
}
