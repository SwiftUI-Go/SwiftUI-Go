//
//  TabNavView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct TabNavView: View {
    @State var tabTag = 0
    
    var body: some View {
        
        NavigationView {
            TabView(selection: $tabTag) {
                List {
                    NavigationLink(destination: Text("Tab Content 1")) {
                        Text("Tab Content 1")
                    }
                }
                .tag(0)
                .tabItem {
                    Label("Tab 1", systemImage: Symbols.circleFill0)
                }
                
                List {
                    NavigationLink(destination: Text("Tab Content 2")) {
                        Text("Tab Content 2")
                    }
                }
                .tag(1)
                .tabItem {
                    Label("Tab 2", systemImage: Symbols.circleFill1)
                }
            }
            .navigationTitle("Tab \(tabTag + 1)")
        }
        .overlay(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(Color.gray, lineWidth: 1)
        )
        .navigationTitle(Text("Tab导航结构"))
        .navigationBarTitleDisplayMode(.inline)
        .padding(20)
    }
}

struct TabNavView_Previews: PreviewProvider {
    static var previews: some View {
        TabNavView()
    }
}

