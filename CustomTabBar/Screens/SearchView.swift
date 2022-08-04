//
//  SearchView.swift
//  CustomTabBar
//
//  Created by Viktor Mauzer on 04.08.2022..
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            Text("Hello SearchView")
                .navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
