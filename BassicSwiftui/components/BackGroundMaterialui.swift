//
//  BackGroundMaterialui.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct BackGroundMaterialui: View {
    var body: some View {
        VStack {
            Spacer()
            VStack{

            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(25)
           
            
        }
        .ignoresSafeArea(.all)
        .background(
            Image("newYear")
                .resizable()
                .frame(width: .infinity, height: 900)
                
        )
    }
}

struct BackGroundMaterialui_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundMaterialui()
    }
}
