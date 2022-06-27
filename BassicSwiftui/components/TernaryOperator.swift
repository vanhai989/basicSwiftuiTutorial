//
//  TernaryOperator.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct TernaryOperator: View {
    @State var isChange: Bool = false
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Button(action: {isChange.toggle()}) {
                    Text("Press me")
                }
                
                Circle()
                    .fill(isChange ? .red : .blue)
                    .frame(width: 100, height: 100)
                    
                
                Spacer()
            }
        }
    }
}

struct TernaryOperator_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperator()
    }
}
