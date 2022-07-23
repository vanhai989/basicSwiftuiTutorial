//
//  SwipeActionUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct SwipeActionUI: View {
    var data = [
    "item1", "item2", "item3", "item4"
    ]
    var body: some View {
        List {
            ForEach(data, id: \.self) {
                Text($0)
            }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button {
                    
                } label: {
                        Text("Share")
                }
                .tint(.yellow)

            }
            
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button {
                    
                } label: {
                        Text("Archive")
                }
                .tint(.green)
            }
        }
    }
}

struct SwipeActionUI_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionUI()
    }
}
