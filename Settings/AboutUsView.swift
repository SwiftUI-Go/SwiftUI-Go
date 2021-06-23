//
//  AboutUsView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct AboutUsView: View {
    
    private func rowCell(_ l: LocalizedStringKey, _ r: String) -> some View {
        return HStack {
            Text(l)
            Spacer()
            Text(r)
        }
    }
    
    var body: some View {
        List {
            rowCell(LocalizeKey.version, "")
        }
        .navigationBarTitle(Text(LocalizeKey.aboutUs))
        .listStyle(InsetGroupedListStyle())
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
