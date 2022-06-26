//
//  SystemImageUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct SystemImageUI: View {
    var body: some View {
        Image(systemName: "pencil.circle.fill")
            .renderingMode(.original)
//            .resizable()
//            aspectRatio(contentMode: .fit)
//            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .font(.system(size: 100))
            .clipped()
       
    }
}

struct SystemImageUI_Previews: PreviewProvider {
    static var previews: some View {
        SystemImageUI()
    }
}
