//
//  MaterialDetailView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialDetailView: View {
    var body: some View {
        List {
            Text("Detail View")
        }.navigationBarTitle(Text("Detail"))
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView()
    }
}
