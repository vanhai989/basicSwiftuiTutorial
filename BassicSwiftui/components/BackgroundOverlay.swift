//
//  BackgroundOverlay.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct BackgroundOverlay: View {
    var body: some View {
        //        Text("Hello")
        //            .background(
        //            Circle()
        //                .fill(.blue)
        //                .frame(width: 100, height: 100, alignment: .center)
        //            )
        //            .frame(width: 120, height: 120)
        //            .background(
        //                Circle().fill(.red))
        
        //        Circle()
        //            .fill(.blue)
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .overlay {
        //                Text("1")
        //                    .foregroundColor(.white)
        //                    .font(.headline)
        //            }
        //            .background(
        //            Circle()
        //                .fill(.red)
        //                .frame(width: 110, height: 110)
        //            )
        
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.largeTitle)
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .overlay ( Circle()
                                .fill(.red)
                                .frame(width: 30, height: 30)
                                .overlay(content: {
                                    Text("1")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                }),
                               alignment: .bottomTrailing)
                
                
            )
        
    }
}

struct BackgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlay()
    }
}
