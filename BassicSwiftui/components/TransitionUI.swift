//
//  TransitionUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 29/06/2022.
//

import SwiftUI

struct TransitionUI: View {
    @State var transistion: Bool = false
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Button {
                    transistion.toggle()
                } label: {
                    Text("Button")
                }
                Spacer()
                //slide
//                if transistion {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(width: .infinity, height: 500)
//                        .transition(AnyTransition.slide)
//                        .animation(.default)
//
//                }
                
                // move {bottom, top..}
                
//                if transistion {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(width: .infinity, height: 500)
//                        .transition(.move(edge: .bottom))
//                        .animation(.default)
//
//                }
//
                // easeInout
//                if transistion {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(width: .infinity, height: 500)
//                        .transition(AnyTransition.opacity.animation(.easeIn))
//                        .animation(.default)
//
//                }
                
                //asymetrix
                
                if transistion {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: .infinity, height: 500)
                        .transition(.asymmetric(insertion: .slide, removal: .move(edge: .bottom)))
                        .animation(.default)
                    
                }
                
            }
        }
    }
}

struct TransitionUI_Previews: PreviewProvider {
    static var previews: some View {
        TransitionUI()
    }
}
