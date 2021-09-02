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
        case Play = 1
        case Settings = 2
        
        var title: LocalizedStringKey {
            switch self {
            case .Material:
                return LocalizeKey.appName.localized()
            case .Play:
                return LocalizeKey.play.localized()
            case .Settings:
                return LocalizeKey.settings.localized()
            }
        }
        
        var icon: String {
            switch self {
            case .Material:
                return Symbols.paperplane
            case .Play:
                return Symbols.gamecontroller
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
                        Label(TabTag.Material.title, systemImage: TabTag.Material.icon)
                    }
                
                PlayView()
                    .tag(TabTag.Play)
                    .tabItem {
                        Label(TabTag.Play.title, systemImage: TabTag.Play.icon)
                    }

                SettingsView()
                    .tag(TabTag.Settings)
                    .tabItem {
                        Label(TabTag.Settings.title, systemImage: TabTag.Settings.icon)
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
