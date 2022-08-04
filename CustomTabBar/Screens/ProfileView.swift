//
//  ProfileView.swift
//  CustomTabBar
//
//  Created by Viktor Mauzer on 04.08.2022..
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            Text("Hello ProfileView")
                .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
