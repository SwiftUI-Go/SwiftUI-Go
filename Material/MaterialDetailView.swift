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
            
            if let sourceType = material?.sourceType(), let sourceUrl = material?.sourceUrl() {
                
                switch sourceType {
                case SourceType.http, SourceType.html:
                    MaterialWebView(sourceUrl)
                        .tag(1)
                default:
                    if let html = material?.sourceUrl()?.fileContent()?.markdownToHTML {
                        MaterialWebView(html)
                            .tag(1)
                    } else {
                        MaterialWebView("404")
                            .tag(1)
                    }
                }

            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .navigationBarItems(trailing: Picker(selection: $selectedSegment, label: Text(""), content: {
            if let sourceType = material?.sourceType(), sourceType != SourceType.unkown {
                Text("教程").tag(0)
                Text("源码").tag(1)
            }
        }).pickerStyle(SegmentedPickerStyle()))
        
    }
}

struct MaterialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialDetailView(material: ExpandMaterial(id: -1, name: "题目"))
    }
}
