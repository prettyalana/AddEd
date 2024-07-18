//
//  TabBar.swift
//  AddED+
//
//  Created by Alana Edwards on 7/18/24.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab = 0
    var body: some View {
                TabView(selection: $selectedTab) {
                    HomeScreen()
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                        .tag(0)
                    Text("Saved Programs")
                        .tabItem {
                            Image(systemName: "bookmark")
                            Text("Saved")
                        }
                        .tag(1)
                    Text("Add a New Program")
                        .tabItem {
                            Image(systemName: "plus.app")
                            Text("Add")
                        }
                        .tag(2)
                    Text("Search")
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                        .tag(3)
                    Text("Edit Profile")
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                        .tag(4)
                    
                }
            }
        }

#Preview {
    TabBar()
}
