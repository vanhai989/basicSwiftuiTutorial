//
//  EnvironmentObject.swift
//  BassicSwiftui
//
//  Created by Hai Dev on 23/07/2022.
//

import SwiftUI

// view model

class EnviromentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init () {
        getDataArray()
    }
    
    func getDataArray() {
        self.dataArray.append(contentsOf: ["item1", "item2", "item3", "item4"])
    }
}

struct EnvironmentObjectView: View {
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(itemSelected: item)
                    } label: {
                        Text(item)
                    }
                }
            }
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    var itemSelected: String
    var body: some View {
            NavigationLink {
                FinalView()
            } label: {
                Text(itemSelected)
            }

    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnviromentViewModel

    var body: some View {
        List {
            ForEach(viewModel.dataArray, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
