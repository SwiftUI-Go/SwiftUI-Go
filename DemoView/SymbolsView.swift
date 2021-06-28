//
//  SymbolsView.swift
//  SwiftUIGo
//
//  Created by lvyuan on 2021/6/23.
//

import SwiftUI

struct SymbolsView: View {
    let headerId = "list.header"
    let symbols = SystemSymbols
    @State var keyword = ""
    
    private func dataSource() -> [String] {
        guard keyword.count != 0 else {
            return symbols
        }
        return symbols.filter { (item) -> Bool in
            return item.lowercased().contains(keyword.lowercased())
        }
    }
    
    private struct SymbolCell: View {
        var symbol: String
        
        var body: some View {
            HStack(spacing: 20) {
                Image(systemName: symbol)
                    .foregroundColor(.randomColor)
                    .font(.title2)
                Spacer()
                Text(symbol)
                    .font(.title2)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.1), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .padding(.top, 10)
            .padding(.leading, 10)
            .padding(.trailing, 10)

        }
    }
    
    var body: some View {
        
        ScrollView {
            LazyVStack {
                SearchBarView(text: $keyword, placeholder: LocalizeKey.filter.rawValue)
                
                ForEach(self.dataSource(), id: \.self) { symbol in
                    SymbolCell(symbol: symbol)
                        .onTapGesture {
                            UIPasteboard.general.string = symbol
                        }
                }
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle(Text(LocalizeKey.symbols.localized()))
        
        
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsView()
    }
}
