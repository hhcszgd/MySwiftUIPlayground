//
//  ContentView.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/15.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Combine
struct ContentView: View {
    @ObservedObject var tabBarControl: TabControl
    var body: some View {
        TabView( selection: $tabBarControl.tabBarIndex) {
            
            HomePage()
                .tag(TabPageType.home.rawValue)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Home")
                }
            
            ShopCartPage()
                .tag(TabPageType.shopcart.rawValue)
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Shopcart")
                }
            
            BasicUsage( )
                .tag(TabPageType.other.rawValue)
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Basic Usage")
            }
            
            ProfilePage()
            .tag(TabPageType.profile.rawValue)
            .tabItem {
                Image(systemName: "4.square.fill")
                Text("Profile")
            }
            
            
            }
        .accentColor(.orange)// color while tab bar item be choosed
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView(tabBarControl: TabControl.share)
    }
}
