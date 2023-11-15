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
                .padding(.bottom, 32)
            CardElement()
                .padding(.bottom, 20)
            SearchElement()
                .padding(.bottom, 24)
            CategoryElement()
                .padding(.bottom, 32)
        }.padding(.horizontal, 24)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
