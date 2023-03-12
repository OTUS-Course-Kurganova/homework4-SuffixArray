//
//  ContentView.swift
//  hwSuffixArray
//
//  Created by Alexandra Kurganova on 21.01.2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            TextFieldElement(inputedWord: .init())
                .padding(.top, 1)
                .padding(.leading, 30)
                .padding(.trailing, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
