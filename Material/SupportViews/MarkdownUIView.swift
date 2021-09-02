//
//  MarkdownUIView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/9/2.
//

import SwiftUI
import MarkdownView

struct MarkdownUIView: UIViewRepresentable {
    
    var markdown: String?
    let md = MarkdownView()

    func makeUIView(context: Context) -> MarkdownView {
        return md
    }
    
    func updateUIView(_ uiView: MarkdownView, context: Context) {
        md.load(markdown: markdown ?? "")
        md.onRendered = { height in
            print("height \(height)")
        }
    }
    
    typealias UIViewType = MarkdownView
    
}
