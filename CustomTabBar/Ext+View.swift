//
//  Ext+View.swift
//  CustomTabBar
//
//  Created by Viktor Mauzer on 04.08.2022..
//

import SwiftUI

extension View {
    func customTabItemStyle(_ selectedTab: TabItem, _ tabItem: TabItem, frameSize: CGFloat) -> some View {
        modifier(CustomTabItemStyle(selectedTab: selectedTab, tabItem: tabItem, frameSize: frameSize))
    }
}
