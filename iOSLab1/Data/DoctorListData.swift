//
//  DoctorListData.swift
//  iOSLab1
//
//  Created by TheGood on 20.11.2023.
//

import SwiftUI

extension DoctorListModel {
    static let firstDoctorData: DoctorListModel = DoctorListModel(
        doctorImage: Images.firstDoctor,
        doctorName: NSLocalizedString("FirstDoctor", comment: ""),
        doctorPost: NSLocalizedString("FirstDoctorPost", comment: ""),
        doctorTime: NSLocalizedString("DoctorTime", comment: ""),
        doctorReviews: NSLocalizedString("DoctorReviews", comment: ""),
        doctorDistance: NSLocalizedString("DistanceText", comment: "")
    )
    static let secondDoctorData: DoctorListModel = DoctorListModel(
        doctorImage: Images.secondDoctor,
        doctorName: NSLocalizedString("SecondDoctor", comment: ""),
        doctorPost: NSLocalizedString("SecondDoctorPost", comment: ""),
        doctorTime: NSLocalizedString("DoctorTime", comment: ""),
        doctorReviews: NSLocalizedString("DoctorReviews", comment: ""),
        doctorDistance: NSLocalizedString("DistanceText", comment: "")
    )
}
