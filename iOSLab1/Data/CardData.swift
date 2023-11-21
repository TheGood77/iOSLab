//
//  CardData.swift
//  iOSLab1
//
//  Created by TheGood on 18.11.2023.
//

import SwiftUI

extension CardModel {
    static let cardData: CardModel = CardModel(
        doctorImage: Images.firstDoctor,
        doctorName: NSLocalizedString("FirstDoctor", comment: ""),
        doctorPost: NSLocalizedString("FirstDoctorPost", comment: ""),
        doctorDate: NSLocalizedString("FirstDate", comment: ""),
        doctorTime: NSLocalizedString("FirstTime", comment: "")
    )
}
