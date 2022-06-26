//
//  ImageUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct ImageUI: View {
    var body: some View {
        Image("newYear")
            .resizable()
//            .renderingMode(.template)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 400)
//            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(10)
            .clipShape(
//            Circle()
//                RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                Ellipse()

        )
    }
}

struct ImageUI_Previews: PreviewProvider {
    static var previews: some View {
        ImageUI()
    }
}
