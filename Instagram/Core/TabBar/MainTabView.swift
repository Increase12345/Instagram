//
//  MainTabView.swift
//  Instagram
//
//  Created by Nick Pavlov on 5/12/23.
//

import SwiftUI

struct MainTabView: View {
    let user: User
    @State private var selextedIndex = 0
    
    var body: some View {
        TabView(selection: $selextedIndex) {
            FeedView()
                .onAppear {
                    selextedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear {
                    selextedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            UploadPostView(tabIndex: $selextedIndex)
                .onAppear {
                    selextedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }.tag(2)
            
            Text("Notifications")
                .onAppear {
                    selextedIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart")
                }.tag(3)
            
            CurrentUserProfile(user: user)
                .onAppear {
                    selextedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
        .tint(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(user: User.MOCK_USERS[0])
    }
}
