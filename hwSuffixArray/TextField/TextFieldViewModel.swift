//
//  TextFieldViewModel.swift
//  hwSuffixArray
//
//  Created by Alexandra Kurganova on 12.03.2023.
//

import Foundation

protocol TextFieldElementViewModelProtocol {
    var suffixCountSorted: String { get set }
    func countSuffixesFrom(text: String)
}

final class TextFieldElementViewModel: ObservableObject {
    @Published var suffixCountSorted = ""

    struct SuffixInfo {
        let word: String
        let count: Int
    }

    func countSuffixesFrom(text: String) {
        let words = text
            .split(separator: " ")
            .map { String($0) }
        
        let suffixCount = words
            .flatMap { SuffixSequence(word: $0) }
            .reduce([String: Int](), { suffixCount, suffix in
                var suffixCount = suffixCount
                suffixCount[suffix] = (suffixCount[suffix] ?? 0) + 1
                return suffixCount
            })
        
        let suffixCountSorted = suffixCount
            .map { SuffixInfo(word: $0.key, count: $0.value) }
            .sorted { info1, info2 in info1.word < info2.word }
        
        self.suffixCountSorted = suffixCountSorted.reduce("", { res, info in
            info.count > 1 ? res + "\(info.word) – \(info.count)\n" : res + "\(info.word)\n"
        })
    }
}
