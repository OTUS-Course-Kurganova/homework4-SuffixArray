//
//  hwSuffixArrayApp.swift
//  hwSuffixArray
//
//  Created by Alexandra Kurganova on 21.01.2023.
//

import SwiftUI

@main
struct hwSuffixArrayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TextFieldElementViewModel())
        }
    }
}
