//
//  AnimationUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct AnimationUI: View {
    @State var animation: Bool = false
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Button {
                    animation.toggle()
                } label: {
                    Text("Star animation")
                }
                
                Spacer()
                
                RoundedRectangle(cornerSize: animation ? .init(width: 75, height: 75) : .init(width: 20, height: 20) )
                    .fill(.blue)
                    .frame(width:animation ? 150 : 300, height:animation ? 150 : 300)
                    .rotationEffect(Angle(degrees: animation ? 360 : 0))
                    .offset(y: animation ? 300 : 0)
//                    .animation(Animation.default.repeatForever(autoreverses: true))
                    .animation(.default.repeatForever(autoreverses: true))
                
                Spacer()
                
            }
        }
    }
}

struct AnimationUI_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUI()
    }
}
