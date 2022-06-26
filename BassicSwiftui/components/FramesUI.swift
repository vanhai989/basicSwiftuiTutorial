//
//  FramesUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct FramesUI: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.green)
            .frame(width: 250, height: 250, alignment: .bottomLeading)
            .background(.blue)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.orange)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.red)
    }
}

struct FramesUI_Previews: PreviewProvider {
    static var previews: some View {
        FramesUI()
    }
}
