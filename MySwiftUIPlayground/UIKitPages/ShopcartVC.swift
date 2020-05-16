//
//  ShopcartVC.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import UIKit

class ShopcartVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "shopcart page"
        navigationItem.titleView = {
            let label = UILabel()
            label.text = "shopcart page"
            return label
        }()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
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


class ShopcartNavigationVC: UINavigationController {
    init() { super.init(rootViewController: ShopcartVC()); title = "shopcart"; }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
