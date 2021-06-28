//
//  SearchBarView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/25.
//

import SwiftUI

struct SearchBarView: UIViewRepresentable {
    @Binding public var text: String
    public var placeholder: String
    
    typealias UIViewType = UISearchBar

    func makeCoordinator() -> SearchBarCoordinator {
        return SearchBarCoordinator(text: $text)
    }
    
    func makeUIView(context: Context) -> UISearchBar {
        let uiView = UISearchBar()
        uiView.delegate = context.coordinator
        uiView.searchBarStyle = UISearchBar.Style.minimal
        uiView.placeholder = NSLocalizedString(placeholder, comment: "")
        return uiView
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
}

class SearchBarCoordinator: NSObject, UISearchBarDelegate {
    @Binding var text: String
    
    init(text: Binding<String>) {
        _text = text
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        text = searchText
    }
}
