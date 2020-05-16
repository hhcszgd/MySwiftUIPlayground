//
//  TabbarControlTestCase.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
struct TabbarControlTestCase: View {
    var body: some View {
        VStack(alignment: HorizontalAlignment.center, spacing: 10) {
            WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic"))
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .center)
            Text("click me and you will go to home tab bar item")
                .onTapGesture {
                    TabControl.share.changeTabbar(pageType: .home)
            }
            Text("click me and you will go to shopcart tab bar item")
                .onTapGesture {
                    TabControl.share.changeTabbar(pageType: .shopcart)
            }
            Text("click me and you will go to  prifile tab bar item")
                .onTapGesture {
                    TabControl.share.changeTabbar(pageType: .profile)
            }
            Ellipse()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .onTapGesture {
//                    TabControl.share.changeTabbar(pageType: .profile)
            }
            NavigationLink(destination: Text("New page")) {
                Text("click me and you will go to a new page")
            }
        }
        .onDisappear {  }
        .navigationBarTitle("Basic Usage of swiftUI", displayMode: NavigationBarItem.TitleDisplayMode.inline)
    }
}

struct TabbarControlTestCase_Previews: PreviewProvider {
    static var previews: some View {
        TabbarControlTestCase()
    }
}
