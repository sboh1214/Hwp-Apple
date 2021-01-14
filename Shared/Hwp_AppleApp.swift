//
//  Hwp_AppleApp.swift
//  Shared
//
//  Created by Seungbin Oh on 2021/01/14.
//

import SwiftUI

@main
struct Hwp_AppleApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: Hwp_AppleDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
