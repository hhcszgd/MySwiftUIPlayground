//
//  TabControl.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/15.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import UIKit
import SwiftUI
import Combine
class TabControl: ObservableObject {
    private init(){}
    static let share: TabControl = TabControl()
    @Published var tabBarIndex: Int = 0
    
    /// you should change  tabbar index by calling this method , not set tabBarIndex
    /// - Parameter pageType: tabbar page type
    func changeTabbar(pageType: TabPageType) {
        self.tabBarIndex = pageType.rawValue
    }
}

enum TabPageType: Int {
    case home = 0
    case shopcart
    case other
    case profile
}
