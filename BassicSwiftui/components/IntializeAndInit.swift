//
//  IntializeAndInit.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 26/06/2022.
//

import SwiftUI

struct IntializeAndInit: View {
    var count: Int
    var title: String
    var background: Color
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .Apples {
            self.title = "Apples"
            self.background = .red
        } else {
            self.title = "Orange"
            self.background = .orange
        }
    }
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .underline(color: .white)
            Text(title)
                .font(.headline)
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150, alignment: .center)
        .background(background)
        .cornerRadius(10)
    }
}

enum Fruit {
    case Apples
    case Orange
}

struct IntializeAndInit_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            IntializeAndInit(count: 55, fruit: .Orange)
            IntializeAndInit(count: 55, fruit: .Apples)
        }
    }
}
