//
//  MaterialTutorialView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/24.
//

import SwiftUI

struct MaterialTutorialView: View {
    public var material: ExpandMaterial?
    
    var body: some View {
        List {
            Text(material?.name ?? "")
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle(material?.name ?? "")
    }
}

struct MaterialTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialTutorialView()
    }
}
