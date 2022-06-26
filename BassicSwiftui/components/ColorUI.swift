//
//  ColorUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct ColorUI: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerSize: .init(width: 50, height: 50))
            .fill(
//                .primary
//                Color( #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1))
//                Color(uiColor: .orange)
//                Color(UIColor.systemMint)
                Color("CustomColor")
            )
            .frame(width: 200, height: 300)
            .shadow(color: .accentColor, radius: 10, x: -20, y: -20)
    }
}

struct ColorUI_Previews: PreviewProvider {
    static var previews: some View {
        ColorUI()
            .preferredColorScheme(.light)
    }
}
