//
//  ButtonStyleUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct ButtonStyleUI: View {
    var body: some View {
        VStack {
            
            Button {} label: {
                Text("Button")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            
            Button {} label: {
                Text("Button")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            
            //
            Button {} label: {
                Text("Button")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.plain)
            
            //
            Button {} label: {
                Text("Button")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderless)
            
            //
            Button {} label: {
                Text("Button")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

struct ButtonStyleUI_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleUI()
    }
}
