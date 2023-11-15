//
//  ContentView.swift
//  iOSLab1
//
//  Created by TheGood on 04.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack (alignment: .leading) {
                UserHeader()
                    .padding(.top, 20)
                    .padding(.bottom, 32)
                CardElement()
                    .padding(.bottom, 20)
                SearchElement()
                    .padding(.bottom, 24)
                CategoryElement()
                    .padding(.bottom, 32)
                Text("DoctorListTitle")
                    .foregroundColor(Color("BlackTextColor"))
                    .font(.custom("Poppins-SemiBold", size: 16))
                    .padding(.bottom, 16)
                DoctorListElement(doctorImageUrl: "SecondDoctorImage", doctorName: "SecondDoctor", doctorPost: "SecondDoctorPost")
                    .padding(.bottom, 12)
                DoctorListElement (doctorImageUrl: "DoctorImage", doctorName: "FirstDoctor", doctorPost: "FirstDoctorPost")
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    ContentView()
}
