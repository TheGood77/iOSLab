//
//  UserIcon.swift
//  iOSLab1
//
//  Created by TheGood on 11.11.2023.
//

import SwiftUI

struct UserHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("HelloText")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("HelloTextColor"))
                Text("HelloUser")
                    .font(.custom("Poppins-Bold", size: 20))
                    .foregroundColor(Color("HelloUserColor"))
            }
            Spacer()
            Image("UserIcon")
                .clipShape(Circle())
                .frame(width: 56, height: 56)
        }
    }
}

#Preview {
    UserHeader()
}
