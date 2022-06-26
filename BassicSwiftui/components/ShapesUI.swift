//
//  SharpesUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct ShapesUI: View {
    var body: some View {
        VStack {
            Circle()
//            Ellipse()
//            Capsule()
//                .stroke(lineWidth: 10)
//                .fill(Color.green)
//                .foregroundColor(.red)
                .trim(from: 0.7, to: 1.0)
                .stroke(.red, style: StrokeStyle.init(lineWidth: 10, dash: [10], dashPhase: 10))
               
                
        }
    }
}

struct SharpesUI_Previews: PreviewProvider {
    static var previews: some View {
        ShapesUI()
    }
}
