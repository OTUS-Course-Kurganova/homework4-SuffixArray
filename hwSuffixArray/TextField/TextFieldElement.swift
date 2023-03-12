//
//  TextFieldElement.swift
//  hwSuffixArray
//
//  Created by Alexandra Kurganova on 12.03.2023.
//

import SwiftUI

struct TextFieldElement: View {
    @State var inputedWord: String = .init()
    @EnvironmentObject var viewModel: TextFieldElementViewModel

    var body: some View {
        TextField("Ведите слово:", text: $inputedWord)
            .foregroundColor(.cyan)
            .truncationMode(.tail)
            .autocapitalization(.none)
            .padding()
            .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.orange, lineWidth: 1)
                )
            .padding()
            .onSubmit {
                viewModel.configureWord(word: inputedWord)
            }
        Text(viewModel.sequense)
    }
}

struct TextFieldElement_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldElement()
    }
}
