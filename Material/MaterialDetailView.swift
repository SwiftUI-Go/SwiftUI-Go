//
//  MaterialDetailView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialDetailView: View {
    var material: Material?
    
    var body: some View {
        List {
            Text(material?.name ?? "")
        }.navigationBarTitle(Text(material?.name ?? ""))
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView()
    }
}
