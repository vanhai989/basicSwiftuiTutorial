//
//  ScrollViewUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct ScrollViewUI: View {
    var body: some View {
        ScrollView(showsIndicators: true) {
            LazyVStack {
                ForEach(0..<50) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<50) { index in
                                RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                                    .fill(.blue)
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewUI_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewUI()
    }
}
