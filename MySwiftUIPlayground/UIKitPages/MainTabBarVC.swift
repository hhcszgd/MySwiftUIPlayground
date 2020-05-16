//
//  MainTabBarVC.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {
    lazy var home = HomeNavigationVC()
    lazy var shopcart = ShopcartNavigationVC()
    lazy var profile = ProfileNavigationVC()
    lazy var testCase = TestCaseNavigationVC()
    lazy var detailPate = UINavigationController(rootViewController: UIViewController())
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.setViewControllers([home, shopcart, profile, testCase], animated: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
