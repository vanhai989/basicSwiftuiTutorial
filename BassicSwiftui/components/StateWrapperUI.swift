//
//  StateWrapperUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct StateWrapperUI: View {
    
    @State var backgroundColor: Color = Color.blue
    @State var count: Int = 0
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .padding(.bottom, 10)
                Text("\(count)")
                
                HStack (alignment: .center, spacing: 10) {
                    Button {
                        backgroundColor = .red
                        count += 1
                        title = "Button 1 was pressed!"
                    } label: {
                        Text("Button 1")
                    }
                    
                    Button {
                        backgroundColor = .green
                        count -= 1
                        title = "Button 2 was pressed!"
                    } label: {
                        Text("Button 2")
                    }
                }
                .padding(.top, 20)

            }
            .foregroundColor(.white)
        }
    }
}

struct StateWrapperUI_Previews: PreviewProvider {
    static var previews: some View {
        StateWrapperUI()
    }
}
