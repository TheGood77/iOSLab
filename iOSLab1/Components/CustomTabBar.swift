//
//  TabViewElement.swift
//  iOSLab1
//
//  Created by TheGood on 17.11.2023.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack {
                if selectedTab == 0 {
                    HomeScreen()
                } else if selectedTab == 1 {
                    CalendarScreen()
                } else if selectedTab == 2 {
                    MessageScreen()
                } else if selectedTab == 3 {
                    ProfileScreen()
                }
                HStack {
                    Button(action: {selectedTab = 0}) {
                        TabBarButton(icon: Images.homeIcon, title: NSLocalizedString("HomeText", comment: ""), isSelected: selectedTab == 0)
                    }.hoverEffect()
                    Button(action: {selectedTab = 1}) {
                        TabBarButton(icon: Images.calendarViewIcon, title: NSLocalizedString("CalendarText", comment: ""), isSelected: selectedTab == 1)
                    }.hoverEffect()
                    Button(action: {selectedTab = 2}) {
                        TabBarButton(icon: Images.messageIcon, title: NSLocalizedString("MessageText", comment: ""), isSelected: selectedTab == 2)
                    }.hoverEffect()
                    Button(action: {selectedTab = 3}) {
                        TabBarButton(icon: Images.profileTabIcon, title: NSLocalizedString("ProfileText", comment: ""), isSelected: selectedTab == 3)
                    }.hoverEffect()
                }
                .padding(.horizontal, paddingSize24)
            }
        }
    }
}

struct TabBarButton: View {
    let icon: String
    let title: String
    let isSelected: Bool

    var body: some View {
        HStack(spacing: spacingSize8) {
            Image(icon)
                .renderingMode(.template)
                .foregroundColor(isSelected ? .tabViewColor : .grayColor)
            if isSelected {
                Text(title)
                    .font(.nunitoBold14)
                    .foregroundColor(.tabViewColor)
            }
        }
        .padding(paddingSize12)
        .background(isSelected ? .tabViewBackgroundColor : Color.whiteColor)
        .cornerRadius(radiusSize12)
        .padding(.horizontal, isSelected ? paddingSize0 : paddingSize12)
    }
}

#Preview {
    CustomTabBar()
}
