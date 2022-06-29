//
//  SheetUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 29/06/2022.
//

import SwiftUI

struct SheetUI: View {
    @State var isShowSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                isShowSheet.toggle()
            } label: {
                Text("Button")
            }
         
        }
//        .sheet(isPresented: $isShowSheet) {
//            SecondView()
//        }
        .fullScreenCover(isPresented: $isShowSheet) {
            SecondView()
        }
    }
}

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Button")
            }
         
        }
    }
}

struct SheetUI_Previews: PreviewProvider {
    static var previews: some View {
        SheetUI()
    }
}
