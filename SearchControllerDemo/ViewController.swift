//
//  ViewController.swift
//  SearchControllerDemo
//
//  Created by ZhuYiFeng on 2019/2/11.
//  Copyright © 2019 pengzhiyao. All rights reserved.
//

import UIKit


class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
    var tableView : UITableView!
    var searchController : UISearchController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //以下代码用于解决searchBar动画异常:https://www.jianshu.com/p/7218dfa6a044
//        self.automaticallyAdjustsScrollViewInsets = true
//        self.extendedLayoutIncludesOpaqueBars = true
//        self.edgesForExtendedLayout = .all
//        self.definesPresentationContext = true
        
        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), style: UITableView.Style.plain)
//        tableView.backgroundColor = UIColor.green
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        self.searchController = UISearchController.init(searchResultsController: nil)
        let searchField = searchController.searchBar.value(forKey: "_searchField") as! UITextField
        searchField.backgroundColor = UIColor.init(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
        searchController.searchBar.barTintColor = UIColor.white
//        if #available(iOS 11.0, *) {
//            self.navigationItem.searchController = searchController
//            self.navigationItem.hidesSearchBarWhenScrolling = false
//        } else {
//            // Fallback on earlier versions
//
//        }
        self.tableView.tableHeaderView = searchController.searchBar
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = "你好"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    


}

