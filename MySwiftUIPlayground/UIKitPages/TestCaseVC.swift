//
//  TestCaseVC.swift
//  MySwiftUIPlayground
//
//  Created by JohnConnor on 2020/5/16.
//  Copyright © 2020 JohnConnor. All rights reserved.
//

import UIKit
import Combine
class TestCaseVC: UIViewController {
    var dispose: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = {
            let label = UILabel()
            label.text = "test case page"
            return label
        }()
        view.addSubview(tableView)
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
    
    var dataSource: [TestCase] = TestCase.allCases
}

extension TestCaseVC: UITableViewDelegate, UITableViewDataSource{
    func  handleCaseSelect(caseValue: TestCase)  {
        var alertMessage = ""
        switch caseValue {
        case .homePageDataSource:
            var homePageDataSource = PublisherManager.share.homePublisher.value
            homePageDataSource.append(["new to add"])
            PublisherManager.share.homePublisher.send(homePageDataSource)
            alertMessage = "home page data source has been changed and refreshed"
        default:
            print("nothing to do")
        }
        self.alertMessage(message: alertMessage)
    }
    
    func alertMessage(message:String) {
        let alertController = UIAlertController(title: "notice", message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        handleCaseSelect(caseValue: dataSource[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCellll")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "UITableViewCellll")
        }
        cell?.textLabel?.text = dataSource[indexPath.row].text
        return cell!
    }
    
    
}

class TestCaseNavigationVC: UINavigationController {
    init() { super.init(rootViewController: TestCaseVC()); title = "testcase"; }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


enum TestCase: String, CaseIterable {
    case homePageDataSource
    case homePageDataSource2
    case homePageDataSource3
    case homePageDataSource4
    var text: String {
        switch self  {
        case .homePageDataSource:
            return "change home page data source by combine"
        default:
            return "undefine"
        }
    }
    
}
