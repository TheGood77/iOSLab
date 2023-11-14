//
//  SearchElement.swift
//  iOSLab1
//
//  Created by TheGood on 14.11.2023.
//

import SwiftUI

struct SearchElement: View {
    var body: some View {
        HStack {
            Image("SearchIcon")
            Text("SearchText")
            .font(.custom("Poppins-Regular", size: 15))
            .foregroundColor(Color("SearchTextColor"))
            Spacer()
        }
        .padding(16)
//        .frame(width: 327, alignment: .leading)
        .background(Color("SearchBackgroundColor"))
        .cornerRadius(12)
    }
}

#Preview {
    SearchElement()
}

