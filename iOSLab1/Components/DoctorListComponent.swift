//
//  DoctorListElement.swift
//  iOSLab1
//
//  Created by TheGood on 15.11.2023.
//

import SwiftUI

struct DoctorListComponent: View {
    
    @Binding var doctorListData: DoctorListModel
    
    var body: some View {
        Button (action: {}) {
            VStack(spacing: spacingSize20) {
                HStack {
                    Image(doctorListData.doctorImage)
                        .frame(width: imageSize48, height: imageSize48)
                        .background(Color.whiteColor)
                        .clipShape(Circle())
                        .padding(.trailing, paddingSize10)
                    VStack(alignment: .leading) {
                        Text(doctorListData.doctorName)
                            .foregroundColor(.blackColor)
                            .font(.poppinsBold16)
                        Text(doctorListData.doctorPost)
                            .foregroundColor(.grayColor)
                            .font(.poppinsRegular14)
                    }
                    Spacer()
                    Image(.locationIcon)
                    Text(doctorListData.doctorDistance)
                        .font(.poppinsRegular14)
                        .foregroundColor(.grayColor)
                }
                Divider().overlay(Color.secondDividerColor)
                HStack(spacing: spacingSize6) {
                    Image(.clockIcon)
                        .renderingMode(.template)
                        .foregroundColor(.reviewColor)
                    Text(doctorListData.doctorReviews)
                        .font(.poppinsRegular12)
                        .foregroundColor(.reviewColor)
                        .padding(.trailing, paddingSize24)
                    Image(.clockIcon)
                        .renderingMode(.template)
                        .foregroundColor(.backgroundCardColor)
                    Text(doctorListData.doctorTime)
                        .font(.poppinsRegular12)
                        .foregroundColor(.backgroundCardColor)
                        .padding(.trailing, paddingSize36)
                }
            }
            .padding(.horizontal, paddingSize20)
            .padding(.vertical, paddingSize16)
            .background(Color.whiteColor)
            .cornerRadius(radiusSize12)
            .shadow(color: ShadowStyle.shadowConfig.color, radius: ShadowStyle.shadowConfig.radius, x: ShadowStyle.shadowConfig.x, y: ShadowStyle.shadowConfig.y)
        }.hoverEffect()
    }
}

#Preview {
    DoctorListComponent(doctorListData:.constant(DoctorListModel.firstDoctorData))
//    DoctorListComponent(doctorListData:.constant(DoctorListModel.secondDoctorData))
}
