//
//  DisclosureGroupView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/22.
//

import SwiftUI

struct DisclosureGroupView: View {
    @State var isExpanded = true
    var expandedMaterial: ExpandMaterial?
    
    var body: some View {
        DisclosureGroup(isExpanded: $isExpanded, content: {
            ForEach(expandedMaterial?.materials ?? []) { item in
                NavigationLink(destination: MaterialDetailView(item)) {
                    MaterialCell(item)
                }
            }
        }, label: {
            
            Button {
                withAnimation {
                    isExpanded.toggle()
                }
            } label: {
                Text(expandedMaterial?.name ?? "")
                    .foregroundColor(.black)
            }.buttonStyle(DefaultButtonStyle())
            
        })
 
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
