//
//  TextUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct TextUI: View {
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World!")
            .font(.system(size: 20, weight: .semibold, design: .serif))
            .underline(true, color: Color.red)
            .strikethrough(true, color: .green)

            .fontWeight(.heavy)
            .multilineTextAlignment(.leading)
            .padding()
           
    }
}

struct TextUI_Previews: PreviewProvider {
    static var previews: some View {
        TextUI()
    }
}
