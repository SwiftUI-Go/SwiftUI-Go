//
//  MaterialTutorialView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/24.
//

import SwiftUI
import Alamofire

struct MaterialTutorialView: View {
    public var material: ExpandMaterial?
    @State var json: String?

    func loadData() {
        AF.request("https://httpbin.org/get").responseJSON { res in
            json = res.data?.toString()
        }
    }
    
    var body: some View {
        ZStack {

            if json == nil {
                ProgressView()
            } else {
                List {
                    Text(material?.name ?? "")
                    Text(json ?? "")
                }
                .listStyle(InsetGroupedListStyle())
                .navigationBarTitle(material?.name ?? "")
            }
        }
        .onAppear(perform: loadData)

    }
}

struct MaterialTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialTutorialView()
    }
}
