//
//  AnimationCurvesTimming.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 29/06/2022.
//

import SwiftUI

struct AnimationCurvesTimming: View {
    @State var animation: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button {
                animation.toggle()
            } label: {
                Text("Press me")
            }
            
            Rectangle()
                .frame(width: animation ? 350 : 50, height: 100)
                .cornerRadius(10)
                .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0))
            
//            Rectangle()
//                .frame(width: animation ? 350 : 50, height: 100)
//                .animation(.linear(duration: timing))
//
//            Rectangle()
//                .frame(width: animation ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing))
//
//
//            Rectangle()
//                .frame(width: animation ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing))

        }
    }
}

struct AnimationCurvesTimming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesTimming()
    }
}
