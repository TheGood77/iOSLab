//
//  SystemDesign.swift
//  iOSLab1
//
//  Created by TheGood on 17.11.2023.
//

import SwiftUI

extension Color {
    static let blackColor = Color("BlackTextColor")
    static let grayColor = Color("GrayTextColor")
    static let whiteColor = Color("WhiteColor")
    static let doctorPostColor = Color("DoctorPostColor")
    static let dividerColor = Color("DividerColor")
    static let backgroundCardColor = Color("BackgroundCardColor")
    static let searchBackgroundColor = Color("SearchBackgroundColor")
    static let categoryBackgroundColor = Color("CategoryBackgroundColor")
    static let reviewColor = Color("ReviewTextColor")
    static let secondDividerColor = Color("SecondDividerColor")
    static let tabViewColor = Color("TabViewColor")
    static let tabViewBackgroundColor = Color("TabViewBackgroundColor")
}

struct ShadowStyle {
    var color: Color
    var radius: CGFloat
    var x: CGFloat
    var y: CGFloat
}

extension ShadowStyle {
    static let shadowConfig = ShadowStyle(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
}

extension Font {
    static let poppinsRegular12 = Font.custom("Poppins-Regular", size: 12)
    static let poppinsRegular14 = Font.custom("Poppins-Regular", size: 14)
    static let poppinsRegular15 = Font.custom("Poppins-Regular", size: 15)
    static let poppinsRegular16 = Font.custom("Poppins-Regular", size: 16)
    static let poppinsBold16 = Font.custom("Poppins-Bold", size: 16)
    static let poppinsBold20 = Font.custom("Poppins-Bold", size: 20)
    static let poppinsSemiBold16 = Font.custom("Poppins-SemiBold", size: 16)
    static let nunitoBold14 = Font.custom("Nunito-Bold", size: 14)
}
