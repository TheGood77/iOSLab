//
//  DoctorListElement.swift
//  iOSLab1
//
//  Created by TheGood on 15.11.2023.
//

import SwiftUI

struct DoctorListElement: View {
    init(doctorImageUrl: String, doctorName: String, doctorPost: String) {
        self.doctorImageUrl = doctorImageUrl
        self.doctorName = doctorName
        self.doctorPost = doctorPost
    }
    
    var doctorImageUrl: String
    var doctorName: String
    var doctorPost: String
    
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                Image(doctorImageUrl)
                    .frame(width: 48, height: 48)
                    .background(.white)
                    .clipShape(.circle)
                    .padding(.trailing, 10)
                VStack(alignment: .leading) {
                    Text(NSLocalizedString(doctorName, comment: ""))
                        .foregroundColor(Color("BlackTextColor"))
                        .font(.custom("Poppins-Bold", size: 16))
                    Text(NSLocalizedString(doctorPost, comment: ""))
                        .foregroundColor(Color("GrayTextColor"))
                        .font(.custom("Poppins-Regular", size: 14))
                }
                Spacer()
                Image("LocationIcon")
                Text("DistanceText")
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("GrayTextColor"))
            }
            Divider().overlay(Color("DividerColor"))
            HStack (spacing: 6) {
                Image("ClockIcon")
                    .renderingMode(.template)
                    .foregroundColor(Color("ReviewTextColor"))
                Text("DoctorReviews")
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color("ReviewTextColor"))
                    .padding(.trailing, 24)
                Image("ClockIcon")
                    .renderingMode(.template)
                    .foregroundColor(Color("TimeTextColor"))
                Text("DoctorTime")
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color("TimeTextColor"))
                    .padding(.trailing, 36)
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
    }
}

#Preview {
    DoctorListElement (doctorImageUrl: "DoctorImage", doctorName: "FirstDoctor", doctorPost: "FirstDoctorPost")
//    DoctorListElement(doctorImageUrl: "SecondDoctorImage", doctorName: "SecondDoctor", doctorPost: "SecondDoctorPost")
}
