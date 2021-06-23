//
//  DemoView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct DemoView: View {
    var body: some View {
        List {
            NavigationLink(destination: SymbolsView()) {
                Text(LocalizeKey.symbols)
            }
            NavigationLink(destination: TabNavView()) {
                Text("Tab导航结构")
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
