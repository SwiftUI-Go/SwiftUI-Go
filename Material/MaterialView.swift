//
//  MaterialView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialView: View {
        
    let settingLink = NavigationLink(
        destination: SettingsView()) {
        Image(systemName: kGearshapeFill)
    }
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: MaterialDetailView()) {
                    Text("First Section")
                }
            }
            .navigationBarTitle(Text("SwiftUI Go"))
            .navigationBarItems(trailing: settingLink)
        }
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView()
    }
}
