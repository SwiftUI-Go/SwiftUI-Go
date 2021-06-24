//
//  MaterialDetailView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialDetailView: View {
    public var material: ExpandMaterial?
    @State private var selectedSegment = 0
    
    var body: some View {

        TabView(selection: $selectedSegment) {
            MaterialTutorialView(material: material)
                .tag(0)
            MaterialWebView(url: URL(string: "https://www.baidu.com"))
                .equatable()
                .tag(1)
        }
        .navigationBarTitleDisplayMode(.inline)
        .tabViewStyle(PageTabViewStyle())
        .navigationBarItems(trailing: Picker(selection: $selectedSegment, label: Text(""), content: {
            Text("教程").tag(0)
            Text("源码").tag(1)
        })
        .pickerStyle(SegmentedPickerStyle()))
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView(material: ExpandMaterial(id: -1, name: "题目"))
    }
}
