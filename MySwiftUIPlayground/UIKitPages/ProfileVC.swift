//
//  ProfileVC.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import UIKit

class ProfileVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = {
            let label = UILabel()
            label.text = "profile page"
            return label
        }()
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



class ProfileNavigationVC: UINavigationController {
    init() { super.init(rootViewController: ProfileVC()) ;title = "profile"}
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
