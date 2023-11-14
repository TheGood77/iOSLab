//
//  ContentView.swift
//  iOSLab1
//
//  Created by TheGood on 04.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            UserHeader()
            CardElement()
            SearchElement()
        }.padding()
    }
}

#Preview {
    ContentView()
}
