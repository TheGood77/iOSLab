//
//  CategoryData.swift
//  iOSLab1
//
//  Created by TheGood on 20.11.2023.
//

import SwiftUI

extension CategoryModel {
    static let categoryData: [CategoryModel] = [
        CategoryModel(categoryImage: Images.virusIcon, categoryName: NSLocalizedString("VirusElementText", comment: "")),
        CategoryModel(categoryImage: Images.profileIcon, categoryName: NSLocalizedString("ProfileElementText", comment: "")),
        CategoryModel(categoryImage: Images.medicineIcon, categoryName: NSLocalizedString("MedicineElementText", comment: "")),
        CategoryModel(categoryImage: Images.hospitalIcon, categoryName: NSLocalizedString("HospitalElementText", comment: "")),
    ]
}
