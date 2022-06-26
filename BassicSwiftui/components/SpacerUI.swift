//
//  SpaceUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct SpacerUI: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(height: 10)
                .background(.yellow)
            RoundedRectangle(cornerSize: CGSize.init(width: 25, height: 25 ))
                .fill(.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.yellow)
            RoundedRectangle(cornerSize: CGSize.init(width: 25, height: 25 ))
                .fill(.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.yellow)
            RoundedRectangle(cornerSize: CGSize.init(width: 25, height: 25 ))
                .fill(.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.yellow)
        }
    }
}

struct SpacerUI_Previews: PreviewProvider {
    static var previews: some View {
        SpacerUI()
    }
}
