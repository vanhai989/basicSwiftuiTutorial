//
//  BindingUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct BindingUI: View {
    @State var btnBackgroundColor: Color = Color.orange
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            subView(backgroundButton: $btnBackgroundColor)
          
        }
    }
}

struct BindingUI_Previews: PreviewProvider {
    static var previews: some View {
        BindingUI()
    }
}

struct subView: View {
    @Binding var backgroundButton: Color
    var body: some View {
        VStack {
            Button {
                backgroundButton = .green
            } label: {
                Text("Press me")
                    .foregroundColor(.white)
                    .padding()
                    .background(backgroundButton)
                    .cornerRadius(10)
            }

        }
    }
}
