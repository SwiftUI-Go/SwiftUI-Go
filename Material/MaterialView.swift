//
//  MaterialView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialView: View {

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.materialSections) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.materials ?? []) { material in
                            NavigationLink(
                                destination: MaterialDetailView(material: material)) {
                                MaterialCell(title: material.name)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI Go"))
            .navigationBarItems(trailing: NavigationLink(
                destination: SettingsView()) {
                Image.gearshape.foregroundColor(.themeColor)
            })
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView()
    }
}
