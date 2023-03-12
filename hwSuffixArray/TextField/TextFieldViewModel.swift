//
//  TextFieldViewModel.swift
//  hwSuffixArray
//
//  Created by Alexandra Kurganova on 12.03.2023.
//

import Foundation

protocol TextFieldElementViewModelProtocol {
    var sequense: String { get set }
    func configureWord(word: String)
}

final class TextFieldElementViewModel: ObservableObject {
    private var suffixArray = [String]()
    @Published var sequense: String = ""

    func configureWord(word: String) {
        self.suffixArray = Array(SuffixSequence(word: word))
        sequense = suffixArray.joined(separator: ", ")
    }
}
