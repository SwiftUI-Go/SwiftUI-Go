//
//  SettingsView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Text("About Us")
        }.navigationBarTitle(Text("Settings"))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
