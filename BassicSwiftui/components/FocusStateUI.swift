//
//  FocusStateUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

// test on simulator
struct FocusStateUI: View {
    enum Field: Hashable {
           case username
           case password
       }

       @State private var username = ""
       @State private var password = ""
       @FocusState private var focusedField: Field?

       var body: some View {
           Form {
               TextField("Username", text: $username)
                   .focused($focusedField, equals: .username)

               SecureField("Password", text: $password)
                   .focused($focusedField, equals: .password)

               Button("Sign In") {
                   if username.isEmpty {
                       focusedField = .username
                   } else if password.isEmpty {
                       focusedField = .password
                   } else {
                       handleLogin(username: username, password: password)
                   }
               }
           }
       }
}

func handleLogin(username: String, password: String) {
    
}

struct FocusStateUI_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateUI()
    }
}
