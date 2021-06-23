//
//  SymbolsView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct SymbolsView: View {
    @State var symbols: [String] = []
    
    private func loadSymbols() {
        symbols = SystemSymbols
    }
    
    private struct SymbolCell: View {
        var symbol: String
        
        var body: some View {
            HStack {
                Image(systemName: symbol)
                    .foregroundColor(.randomColor)
                Spacer()
                Text(symbol)
            }
            .background(Color.white)
        }
    }
    
    var body: some View {
        List(symbols, id: \.self) { symbol in
            SymbolCell(symbol: symbol)
                .onTapGesture {
                    UIPasteboard.general.string = symbol
                }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle(Text(LocalizeKey.symbols))
        .onAppear(perform: loadSymbols)
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsView()
    }
}
