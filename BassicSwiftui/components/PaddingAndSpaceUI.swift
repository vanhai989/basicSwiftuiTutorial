//
//  PaddingAndSpaceUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct PaddingAndSpaceUI: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("this is the description of what we will do on this screen, it is the multiple line and we will align text to the leading edge!")
        }
        
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
        )
    }
}

struct PaddingAndSpaceUI_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpaceUI()
    }
}
