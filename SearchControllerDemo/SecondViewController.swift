//
//  SecondViewController.swift
//  SearchControllerDemo
//
//  Created by ZhuYiFeng on 2019/2/12.
//  Copyright © 2019 pengzhiyao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var tableView : UITableView!
    var searchController : UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), style: UITableView.Style.plain)
        //        tableView.backgroundColor = UIColor.green
//        tableView.delegate = self
//        tableView.dataSource = self
        self.view.addSubview(tableView)
        self.searchController = UISearchController.init(searchResultsController: nil)
//        let searchField = searchController.searchBar.value(forKey: "_searchField") as! UITextField
//        searchField.backgroundColor = UIColor.init(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
//        searchController.searchBar.barTintColor = UIColor.white
        
        self.tableView.tableHeaderView = searchController.searchBar
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
