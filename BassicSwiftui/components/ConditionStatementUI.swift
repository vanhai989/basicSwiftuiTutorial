//
//  ConditionStatementUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct ConditionStatementUI: View {
    
    @State var isShowBtn1: Bool = false
    @State var isShowBtn2: Bool = false
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Button {
                    isShowBtn1.toggle()
                } label: {
                    Text("Button1 \(isShowBtn1.description)")
                        .padding()
                        .background(.red)
                        .cornerRadius(10)
                }
                
                Button {
                    isShowBtn2.toggle()
                } label: {
                    Text("Button2 \(isShowBtn2.description)")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                }
                
                if isShowBtn1 {
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                } else if !isShowBtn1 && isShowBtn2 {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                }
                
                
                
                
                Spacer()

            }
            .foregroundColor(.white)
        }
    }
}

struct ConditionStatementUI_Previews: PreviewProvider {
    static var previews: some View {
        ConditionStatementUI()
    }
}
