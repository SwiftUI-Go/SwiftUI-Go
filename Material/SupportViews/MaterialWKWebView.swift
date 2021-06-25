//
//  MaterialWKWebView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/24.
//

import SwiftUI
import WebKit

struct MaterialWebView: UIViewRepresentable {
    
    public var url: URL?
    public var htmlContent: String?
    typealias UIViewType = WKWebView
    
    init(_ url: URL?) {
        self.url = url
    }
    
    init(_ htmlContent: String?) {
        self.htmlContent = htmlContent
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let pref = WKWebpagePreferences()
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = pref
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let myURL = url {
            uiView.load(URLRequest(url: myURL))
        }
        if let html = htmlContent {
            uiView.loadHTMLString(html, baseURL: nil)
        }
    }
    
}
