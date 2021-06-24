//
//  MaterialWevView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/24.
//

import SwiftUI
import WebKit

struct MaterialWebView: UIViewRepresentable {
    
    public var url: URL?
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        let pref = WKWebpagePreferences()
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = pref
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myUrl = url else {
            return
        }
        uiView.load(URLRequest(url: myUrl))
    }
    
}

extension MaterialWebView: Equatable {
    
}
