//
//  ContentView.swift
//  Shared
//
//  Created by Seungbin Oh on 2021/01/14.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: Hwp_AppleDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(Hwp_AppleDocument()))
    }
}
