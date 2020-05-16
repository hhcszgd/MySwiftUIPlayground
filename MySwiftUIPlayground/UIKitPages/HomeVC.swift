//
//  HomeVC.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import UIKit
import Combine
class HomeVC: BaseVC {
    var dispose: AnyCancellable?
    deinit {
        dispose?.cancel()
        dispose = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "home page"
        navigationItem.titleView = {
            let label = UILabel()
            label.text = "home page"
            return label
        }()
        view.addSubview(tableView)
        dispose = PublisherManager.share.homePublisher.sink { (dataSource) in
            self.dataSource = dataSource
            self.tableView.reloadData()
        }
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
    lazy var tableView: UITableView = {
        let result = UITableView(frame: view.bounds, style: UITableView.Style.plain)
        result.dataSource = self
        result.delegate = self
        return result
    }()

    var dataSource: [[String]] = [
        [ "section 0, row 0", "section 0, row 1", "section 0, row 2","section 0, row 3", "section 0, row 4","section 0, row 5", "section 0, row 6","section 0, row 7", "section 0, row 8","section 0, row 9"],
        [ "section 1, row 0", "section 1, row 1", "section 1, row 2","section 1, row 3", "section 1, row 4","section 1, row 5", "section 1, row 6","section 1, row 7", "section 1, row 8","section 1, row 9"],
    ]
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("learn how to use combine")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCellll")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "UITableViewCellll")
        }
        cell?.textLabel?.text = dataSource[indexPath.section][indexPath.row]
        return cell!
    }
    
    
}

class HomeNavigationVC: UINavigationController {
    init() { super.init(rootViewController: HomeVC()); title = "home"; }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
