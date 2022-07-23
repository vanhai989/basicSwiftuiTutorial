//
//  CustomizeKeyboadSubmit.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

// test on the simulator
struct CustomizeKeyboadSubmit: View {
    @State var username: String = ""
    var body: some View {
        VStack {
            TextField("username", text: $username)
                .submitLabel(SubmitLabel.continue)
                .onSubmit {
                    print("Somethings on the console tab!")
                }
        }
    }
}

struct CustomizeKeyboadSubmit_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeKeyboadSubmit()
    }
}
