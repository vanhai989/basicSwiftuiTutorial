//
//  ButtonUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 27/06/2022.
//

import SwiftUI

struct ButtonUI: View {
    var body: some View {
        Button {
            // do some thing
        } label: {
            Text("Press me")
        }

    }
}

struct ButtonUI_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUI()
    }
}
