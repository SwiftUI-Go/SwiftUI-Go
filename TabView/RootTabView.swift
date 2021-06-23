//
//  RootTabView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct RootTabView: View {
    
    @State var tabTag: TabTag = .Material
    
    enum TabTag: Int {
        case Material = 0
        case Demo = 1
        case Settings = 2
        
        var title: LocalizedStringKey {
            switch self {
            case .Material:
                return LocalizeKey.appName
            case .Demo:
                return LocalizeKey.demo
            case .Settings:
                return LocalizeKey.settings
            }
        }
        
        var icon: String {
            switch self {
            case .Material:
                return Symbols.circleFill0
            case .Demo:
                return Symbols.circleFill1
            case .Settings:
                return Symbols.gearshape
            }
        }
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $tabTag) {
                
                MaterialView()
                    .tag(TabTag.Material)
                    .tabItem {
                        Image(systemName: TabTag.Material.icon)
                        Text(TabTag.Material.title)
                    }
                
                DemoView()
                    .tag(TabTag.Demo)
                    .tabItem {
                        Image(systemName: TabTag.Demo.icon)
                        Text(TabTag.Demo.title)
                    }

                SettingsView()
                    .tag(TabTag.Settings)
                    .tabItem {
                        Image(systemName: TabTag.Settings.icon)
                        Text(TabTag.Settings.title)
                    }

            }
            .navigationTitle(Text(tabTag.title))

        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
