//
//  BackgroundElement.swift
//  iOSLab1
//
//  Created by TheGood on 11.11.2023.
//

import SwiftUI

struct CardComponent: View {
    
    @Binding var cardData: CardModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: spacingSize16) {
            HStack(spacing: spacingSize12) {
                Image(cardData.doctorImage)
                    .background(Color.whiteColor)
                    .clipShape(Circle())
                    .frame(width: imageSize48, height: imageSize48)
                VStack(alignment: .leading, spacing: spacingSize8) {
                    Text(cardData.doctorName)
                        .font(.poppinsBold16)
                        .foregroundColor(.whiteColor)
                    Text(cardData.doctorPost)
                        .font(.poppinsRegular14)
                        .foregroundColor(.doctorPostColor)
                }
                Spacer()
                Button(action: {}) {
                    Image(.arrowIcon)
                }
                .hoverEffect()
            }
            Divider().overlay(Color.dividerColor)
            HStack(spacing: spacingSize8) {
                Image(.calendarIcon)
                Text(cardData.doctorDate)
                    .font(.poppinsRegular12)
                    .foregroundColor(.whiteColor)
                    .padding(.trailing, paddingSize16)
                Image(.clockIcon)
                Text(cardData.doctorTime)
                    .font(.poppinsRegular12)
                    .foregroundColor(.whiteColor)
            }
        }
        .padding(paddingSize20)
        .background(Color.backgroundCardColor)
        .cornerRadius(radiusSize12)
    }
}

#Preview {
    CardComponent(cardData: .constant(CardModel.cardData))
}
