//
//  ForEachLoop.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct ForEachLoop: View {
    let data: [String] = ["HI", "Hello", "Hey everyone"]
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
            }
        }
    }
}

struct ForEachLoop_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoop()
    }
}
