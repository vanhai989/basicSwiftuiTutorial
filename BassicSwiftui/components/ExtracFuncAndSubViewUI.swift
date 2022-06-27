//
//  ExtracFuncAndSubViewUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct ExtracFuncAndSubViewUI: View {
    
    @State var backgroundColor: Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Button {
                changeBackgroundColor()
            } label: {
                Text("Press me")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func changeBackgroundColor() {
        backgroundColor = .red
    }
}

struct ExtracFuncAndSubViewUI_Previews: PreviewProvider {
    static var previews: some View {
        ExtracFuncAndSubViewUI()
    }
}
