//
//  suffixArray.swift
//  hwSuffixArray
//
//  Created by Alexandra Kurganova on 21.01.2023.
//

import Foundation

final class SuffixSequence: Sequence {
    private let word: String
    private var words = [String]()
    private var suffixes = [String.Index]()
   
    init(word: String) {
        self.word = word
        
        self.suffixes = word.indices.sorted { l, r in
            String(word.suffix(from: l)) < String(word.suffix(from: r))
        }
    }

    func makeIterator() -> SuffixIterator {
        SuffixIterator(word: word, suffixes: suffixes)
    }
}
