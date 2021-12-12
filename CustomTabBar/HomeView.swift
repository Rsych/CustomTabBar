//
//  HomeView.swift
//  CustomTabBar
//
//  Created by Ryan J. W. Kim on 2021/12/12.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Home")
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
