//
//  ExtractSubViewUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct ExtractSubViewUI: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            HStack {
                SubViewUI(title: "Apples", background: .orange, count: 55)
                SubViewUI(title: "Bannana", background: .green, count: 100)
            }
        }
    }
}

struct ExtractSubViewUI_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewUI()
    }
}

struct SubViewUI: View {
    let title: String
    let background: Color
    let count: Int
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .foregroundColor(.white)
        .padding()
        .background(background)
        .cornerRadius(10)
    }}
