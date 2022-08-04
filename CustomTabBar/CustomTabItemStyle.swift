//
//  CustomTabItemStyle.swift
//  CustomTabBar
//
//  Created by Viktor Mauzer on 04.08.2022..
//

import SwiftUI

struct CustomTabItemStyle: ViewModifier {
    var selectedTab: TabItem
    var tabItem: TabItem
    var frameSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(selectedTab == tabItem ? .red : Color(UIColor.systemBackground))
            .frame(width: frameSize, height: frameSize)
            .cornerRadius(selectedTab == tabItem ? (frameSize / 2) / 2 : frameSize / 2)
            .shadow(color: .primary.opacity(0.2), radius: selectedTab == tabItem ? 0 : 3)
    }
}
