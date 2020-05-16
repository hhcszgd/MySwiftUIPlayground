//
//  BasicUsage.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/15.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
struct BasicUsage: View {
//    @Binding var index: Int
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination:  TabbarControlTestCase()) {
                    Text("test jump among tab bars")
                }
            }
            .navigationBarTitle("Test Cases", displayMode: NavigationBarItem.TitleDisplayMode.inline)
            .navigationBarItems(
                leading: Text("2"),
                trailing: Text("1")
            )
            
        }
        
    }
}
struct BasicUsage_Previews: PreviewProvider {
    static var previews: some View {
        BasicUsage()
//        Text("ssssss")
    }
}
