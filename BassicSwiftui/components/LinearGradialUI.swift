//
//  LinearGradialUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct LinearGradialUI: View {
    var body: some View {
        RoundedRectangle(cornerSize: .init(width: 25.0, height: 25.0))
            .fill(
//                LinearGradient(colors: [.blue, .orange, .gray], startPoint: .bottomTrailing, endPoint: .top)
//                RadialGradient(colors: [.blue, .orange, .accentColor], center: .topLeading, startRadius: 5, endRadius: 300)
                AngularGradient(gradient: Gradient(colors: [.blue, .orange, .red]), center: .center, angle: .degrees(180 + 45))
                
            )
            .frame(width: 300, height: 200)
        
    }
}

struct LinearGradialUI_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradialUI()
    }
}
