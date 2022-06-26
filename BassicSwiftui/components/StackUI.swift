//
//  StackUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct StackUI: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                .fill(.yellow)
                .frame(width: .infinity, height: .infinity)
                .padding()
            
            VStack (alignment: HorizontalAlignment.center, spacing: 8) {
                RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                    .fill(.red)
                    .frame(width: 100, height: 100, alignment: .center)
                RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                    .fill(.blue)
                    .frame(width: 100, height: 100, alignment: .center)
                
                HStack {
                    RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                        .fill(.green)
                        .frame(width: 100, height: 100)
                    RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                        .fill(.pink)
                        .frame(width: 100, height: 100)
                    RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                        .fill(.orange)
                        .frame(width: 100, height: 100)
                    
                }
                .background(.white)
            }
            .background(.black)
        }
        
    }
}

struct StackUI_Previews: PreviewProvider {
    static var previews: some View {
        StackUI()
    }
}
