//
//  BackgroundElement.swift
//  iOSLab1
//
//  Created by TheGood on 11.11.2023.
//

import SwiftUI

struct CardElement: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 12) {
                Image("DoctorImage")
                    .background(.white)
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 8) {
                    Text("FirstDoctor")
                        .font(.custom("Poppins-Bold", size: 16))
                        .foregroundColor(.white)
                    Text("FirstDoctorPost")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("DoctorPostColor"))
                }
                Spacer()
                Image("ArrowIcon")
            }
            Divider().overlay(Color("DividerColor"))
            HStack (spacing: 8) {
                Image("CalendarIcon")
                
                Text("FirstDate")
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(.white)
                .padding(.trailing, 16)
                
                Image("ClockIcon")
                
                Text("FirstTime")
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(Color("BackgroundCardColor"))
        .cornerRadius(12)
        .padding()
    }
}

#Preview {
    CardElement()
}
