//
//  CategoryElement.swift
//  iOSLab1
//
//  Created by TheGood on 14.11.2023.
//

import SwiftUI

struct CategoryComponent: View {
    
    @Binding var categoryData: [CategoryModel]
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(categoryData, id: \.self) { category in
                VStack {
                    Button(action: {}) {
                        Image(category.categoryImage)
                            .padding(paddingSize24)
                            .background(Color.categoryBackgroundColor)
                            .clipShape(Circle())
                    }
                    .hoverEffect()
                    Text(category.categoryName)
                        .foregroundColor(.grayColor)
                        .font(.poppinsRegular15)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    CategoryComponent(categoryData:.constant(CategoryModel.categoryData))
}
