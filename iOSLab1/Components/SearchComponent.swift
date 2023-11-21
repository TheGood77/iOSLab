//
//  SearchElement.swift
//  iOSLab1
//
//  Created by TheGood on 14.11.2023.
//

import SwiftUI

struct SearchComponent: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack(spacing: spacingSize12) {
            Image(.searchIcon)
            TextField(.searchText, text: $searchText)
                .font(.poppinsRegular15)
                .foregroundColor(.grayColor)
            Spacer()
        }
        .padding(paddingSize16)
        .background(Color.searchBackgroundColor)
        .cornerRadius(radiusSize12)
    }
}

#Preview {
    SearchComponent()
}
