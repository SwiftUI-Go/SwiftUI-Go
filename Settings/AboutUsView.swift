//
//  AboutUsView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct AboutUsView: View {
    
    @State var version = ""
    
    private func rowCell(_ l: LocalizedStringKey, _ r: String) -> some View {
        return HStack {
            Text(l)
            Spacer()
            Text(r)
                .foregroundColor(.gray)
        }
    }
    
    private func loadInfo() {
        guard let info = Bundle.main.infoDictionary else {
            return
        }
        version = "\(info["CFBundleShortVersionString"] as! String)(\(info["CFBundleVersion"] as! String))"
    }
    
    var body: some View {
        List {
            rowCell(LocalizeKey.version, version)
        }
        .navigationBarTitle(Text(LocalizeKey.aboutUs))
        .listStyle(InsetGroupedListStyle())
        .onAppear(perform: loadInfo)
    }
    
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
