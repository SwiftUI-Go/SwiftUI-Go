//
//  MarkdownView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/25.
//

import SwiftUI
import MarkdownUI

struct MarkdownView: View {
    public var markdown: String?
    var body: some View {
        ScrollView {
            Markdown(Document(markdown ?? ""))
                .padding()
        }
    }
}

struct MarkdownView_Previews: PreviewProvider {
    static var previews: some View {
        MarkdownView()
    }
}
