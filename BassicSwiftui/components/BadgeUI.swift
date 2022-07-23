//
//  BadgeUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct BadgeUI: View {
    var body: some View {
//        TabView {
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                }
//                .badge(5)
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                }
//
//            Color.yellow
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                }
//        }
        
        List {
            Text("items")
                .badge(2)
            Text("item second")
                .badge(Text("New"))
        }
    }
}

struct BadgeUI_Previews: PreviewProvider {
    static var previews: some View {
        BadgeUI()
    }
}
