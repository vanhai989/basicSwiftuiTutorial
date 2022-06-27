//
//  SafeAreaUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct SafeAreaUI: View {
    var body: some View {
        ZStack {
            Color.orange
//                .ignoresSafeArea(.all)
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }  .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.orange)
        }
    }
}

struct SafeAreaUI_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaUI()
    }
}
