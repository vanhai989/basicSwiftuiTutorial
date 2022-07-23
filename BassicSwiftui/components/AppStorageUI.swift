//
//  AppStorege.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct AppStorageUI: View {
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack {
            Text(currentUsername ?? "didn't save the username")
            Button {
                self.currentUsername = "Hai dev 01"
            } label: {
                Text("Save")
            }

        }
    }
}

struct AppStorege_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageUI()
    }
}
