//
//  MaterialView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/17.
//

import SwiftUI

struct MaterialView: View {
    
    @StateObject var mockData = MockData()
    
    var body: some View {
        Form {
            ForEach(mockData.sectionMaterials) { section in
                
                Section(header: Text(section.name ?? ""), content: {
                    
                    ForEach(section.materials ?? []) { item in
                        
                        if let itemMaterials = item.materials, (itemMaterials.count != 0) {
                            
                            DisclosureGroupView(expandedMaterial: item)
                            
                        } else {
                            
                            NavigationLink(destination: MaterialDetailView(material: item)) {
                                MaterialCell(item)
                            }
                            
                        }
                    }
                })
                
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView()
    }
}
