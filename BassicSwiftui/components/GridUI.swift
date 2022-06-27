//
//  GridUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct GridUI: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 50, maximum: 50)),
        GridItem(.fixed(100)),
       ]
    
    var body: some View {
        ScrollView {
            RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                .fill(.yellow)
                .frame(width: 300, height: 400)
            LazyVGrid (columns: columns,
                       alignment: .center,
                       spacing: 6,
                       pinnedViews: [.sectionHeaders]
            ) {
                Section(header: Text("Secction1")
                            .frame(maxWidth: .infinity)
                            .background(.blue)
                ) {
                    ForEach(0..<50) { Int in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 50)
                    }
                }
                Section(header: Text("Secction2")
                            .frame(maxWidth: .infinity)
                            .background(.red)) {
                    ForEach(0..<50) { Int in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 50)
                    }
                }
            }
        }
    }
}

struct GridUI_Previews: PreviewProvider {
    static var previews: some View {
        GridUI()
    }
}
