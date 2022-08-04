//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Viktor Mauzer on 04.08.2022..
//

import SwiftUI

enum TabItem {
    case home, explore, cart, search, profile
}

struct ContentView: View {
    
    @State private var selectedTab: TabItem = .home
    let tabItems: [TabItem] = [.home, .explore, .cart, .search, .profile]
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    ExploreView()
                case .cart:
                    CartView()
                case .search:
                    SearchView()
                case .profile:
                    ProfileView()
                }
            }
            
            Spacer()
            
            CustomTabBar(tabItems, selectedTab) { tabItem in
                tabBarButtonAction(tabItem)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
    
    func tabBarButtonAction(_ currentTabItem: TabItem) {
        withAnimation(.spring(response: 0.2, dampingFraction: 0.6)) {
            selectedTab = currentTabItem
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct CustomTabBar: View {
    
    var tabItems: [TabItem]
    var selectedTab: TabItem
    var action: (_ tabItem: TabItem) -> Void
    
    var body: some View {
        VStack {
            Divider()
                .padding(.bottom, 10)
            HStack {
                ForEach(tabItems, id: \.self) { tabItem in
                    Button { action(tabItem) }
                    label: { CustomTabBarButtonLabel(selectedTab: selectedTab, tabItem: tabItem) }
                }
            }
            .padding(.bottom, 40)
        }
    }
    
    init(_ tabItems: [TabItem], _ selectedTab: TabItem, action: @escaping (_ tabItem: TabItem) -> Void) {
        self.tabItems = tabItems
        self.selectedTab = selectedTab
        self.action = action
    }
}

struct CustomTabBarButtonLabel: View {
    var selectedTab: TabItem
    var tabItem: TabItem
    
    var body: some View {
        ZStack {
            if tabItem == .cart {
                Rectangle()
                    .customTabItemStyle(selectedTab, tabItem, frameSize: 70)
            } else {
                Rectangle()
                    .customTabItemStyle(selectedTab, tabItem, frameSize: 50)
            }
            
            switch tabItem {
            case .home: Image(systemName: "house.fill")
            case .explore: Image(systemName: "lasso")
            case .cart: Image(systemName: "cart.fill").font(.title2)
            case .search: Image(systemName: "magnifyingglass")
            case .profile: Image(systemName: "person.fill")
            }
        }
        .foregroundColor(selectedTab == tabItem ? .white : .primary)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
    }
}




