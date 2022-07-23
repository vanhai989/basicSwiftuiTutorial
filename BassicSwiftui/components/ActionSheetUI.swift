//
//  ActionSheetUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct ActionSheetUI: View {
    @State var isShowActionSheet: Bool = false
    var body: some View {
        Button {
            isShowActionSheet.toggle()
        } label: {
            Text("Show actionSheet")
        }
        .actionSheet(isPresented: $isShowActionSheet) {
            getActionSheet()
        }
    }
}

func getActionSheet() -> ActionSheet {
//    return ActionSheet(title: Text("hello"))
    let button1: ActionSheet.Button = .default(Text("Default button"), action: {})
    let button2: ActionSheet.Button = .destructive(Text("destructive button"), action: {})
    let button3: ActionSheet.Button = .cancel()
    
    return ActionSheet(title: Text("ActionSheet title"), message: Text("ActionSheet message"), buttons: [button1, button2, button3])
}

struct ActionSheetUI_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetUI()
    }
}
