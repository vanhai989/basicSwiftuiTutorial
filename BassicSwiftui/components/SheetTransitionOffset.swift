//
//  SheetTransitionOffset.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 29/06/2022.
//

import SwiftUI

struct SheetTransitionOffset: View {
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
            
            // method 1 is Sheet
            //        .sheet(isPresented: $isShowSheet) {
            //            SecondView()
            //        }
            //        .fullScreenCover(isPresented: $isShowSheet) {
            //            SheetView()
            //        }
            
            // method 2 is transistion
            
            //            ZStack {
            //                if isShowSheet {
            //                    SheetView(transition: $isShowSheet)
            //                        .padding(.top, 100)
            //                        .transition(.move(edge: .bottom))
            //                        .animation(.spring())
            //                }
            //            }
            //            .zIndex(2.0)
            // method 3 is offset
            SheetView(transition: $isShowSheet)
                .offset(y: isShowSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var transition: Bool
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                transition.toggle()
            } label: {
                Text("Button")
            }
         
        }
    }
}
struct SheetTransitionOffset_Previews: PreviewProvider {
    static var previews: some View {
        SheetTransitionOffset()
    }
}
