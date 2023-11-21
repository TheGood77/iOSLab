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
                UserHeader(userData: .constant(HeaderModel.userData))
                    .padding(.top, paddingSize20)
                    .padding(.bottom, paddingSize32)
                CardComponent(cardData: .constant(CardModel.cardData))
                    .padding(.bottom, paddingSize20)
                SearchComponent()
                    .padding(.bottom, paddingSize24)
                CategoryComponent(categoryData:.constant(CategoryModel.categoryData))
                    .padding(.bottom, paddingSize32)
                Text(.doctorListTitle)
                    .foregroundColor(.blackColor)
                    .font(.poppinsSemiBold16)
                    .padding(.bottom, paddingSize16)
                DoctorListComponent(doctorListData:.constant(DoctorListModel.secondDoctorData))
                    .padding(.bottom, paddingSize12)
                DoctorListComponent(doctorListData:.constant(DoctorListModel.firstDoctorData))
            }
            .padding(.horizontal, paddingSize24)
        }
    }
}

#Preview {
    ContentView()
}
