//
//  UserIcon.swift
//  iOSLab1
//
//  Created by TheGood on 11.11.2023.
//

import SwiftUI

struct UserHeader: View {
    
    @Binding var userData: HeaderModel

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(.helloText)
                    .font(.poppinsRegular16)
                    .foregroundColor(.grayColor)
                Text(userData.userName)
                    .font(.poppinsBold20)
                    .foregroundColor(.blackColor)
            }
            Spacer()
            Button (action: {}) {
                Image(userData.userImage)
                    .clipShape(Circle())
                    .frame(width: imageSize56, height: imageSize56)
            }.hoverEffect()
        }
    }
}

#Preview {
    UserHeader(userData: .constant(HeaderModel.userData))
}
