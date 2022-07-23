//
//  AsyncImageUI.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

struct AsyncImageUI: View {
    var url: String = "https://picsum.photos/200"
    var body: some View {
        AsyncImage(url: URL(string: url)) { phase in
            if let image = phase.image {
                image // Displays the loaded image.
            } else if phase.error != nil {
                Color.red // Indicates an error.
            } else {
                Color.blue // Acts as a placeholder.
            }
        }
    }
}

struct AsyncImageUI_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageUI()
    }
}
