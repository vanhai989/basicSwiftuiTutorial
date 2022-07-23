//
//  OnApearOnDisapearUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct OnApearOnDisapearUI: View {
    @State var title: String = "Initial text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    
                    ForEach(0..<50) { int in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: .infinity, height: 100)
                            .onAppear {
                                count += 1
                            }
                    }
                    
                }
            }
            .padding()
            .onAppear(perform: {title = "Then onAppear text"})
            .navigationTitle(Text(title + " " + String(count)))
        }
        
    }
}

struct OnApearOnDisapearUI_Previews: PreviewProvider {
    static var previews: some View {
        OnApearOnDisapearUI()
    }
}
