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
        TabView {
            List {
                Text("1")
                Text("2")
            }
            List {
                Text("1")
                Text("2")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView(ExpandMaterial(id: -1, name: "题目"))
    }
}
