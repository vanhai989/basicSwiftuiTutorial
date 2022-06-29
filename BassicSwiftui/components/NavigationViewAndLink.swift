//
//  NavigationViewAndLink.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 29/06/2022.
//

import SwiftUI

struct NavigationViewAndLink: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("navigation link", destination: {
                    MyOtherScreen()
                })
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
                .navigationTitle("title")
//                .navigationBarTitleDisplayMode(.automatic)
//                .navigationBarHidden(false)
                .navigationBarItems(leading:
                                        Image(systemName: "person.fill"),
                                    trailing: Image(systemName: "gear"))
        }
       
    }
}


struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back button here,please onpress me")
                }

            }
        }
        .navigationBarHidden(true)
    }
}

struct NavigationViewAndLink_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewAndLink()
    }
}
