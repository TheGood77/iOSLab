//
//  CategoryElement.swift
//  iOSLab1
//
//  Created by TheGood on 14.11.2023.
//

import SwiftUI

struct CategoryModel: Hashable {
    let imageUrl: String
    let categoryName: String
}

struct CategoryElement: View {
    
    var categoryList: [CategoryModel] = [
            CategoryModel(imageUrl: "VirusIcon", categoryName: NSLocalizedString("VirusElementText", comment: "")),
            CategoryModel(imageUrl: "ProfileIcon", categoryName: NSLocalizedString("ProfileElementText", comment: "")),
            CategoryModel(imageUrl: "MedicineIcon", categoryName: NSLocalizedString("MedicineElementText", comment: "")),
            CategoryModel(imageUrl: "HospitalIcon", categoryName: NSLocalizedString("HospitalElementText", comment: "")),
        ]
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(categoryList, id: \.self) { category in
                VStack(spacing: 8) {
                    Image(category.imageUrl)
                        .padding(24)
                        .background(Color("CategoryBackgroundColor"))
                        .cornerRadius(100)
                        .clipShape(.circle)
                    Text(category.categoryName)
                        .foregroundColor(Color("CategoryTextColor"))
                        .font(.custom("Poppins-Regular", size: 15))
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    CategoryElement()
}
