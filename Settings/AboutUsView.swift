//
//  AboutUsView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct AboutUsView: View {
    
    @State var version = ""
    
    private func loadInfo() {
        guard let info = Bundle.main.infoDictionary else {
            return
        }
        version = "\(info["CFBundleShortVersionString"] as! String)(\(info["CFBundleVersion"] as! String))"
    }
    
    var body: some View {
        List {
            HStack {
                Text(LocalizeKey.version.rawValue.localized())
                Spacer()
                Text(version)
                    .foregroundColor(.gray)
            }
        }
        .navigationBarTitle(Text(LocalizeKey.aboutUs.localized()))
        .listStyle(InsetGroupedListStyle())
        .onAppear(perform: loadInfo)
    }
    
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
