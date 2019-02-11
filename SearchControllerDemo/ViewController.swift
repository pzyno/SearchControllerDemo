//
//  ViewController.swift
//  SearchControllerDemo
//
//  Created by ZhuYiFeng on 2019/2/11.
//  Copyright © 2019 pengzhiyao. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
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
        tableView.backgroundColor = UIColor.green
        self.view.addSubview(tableView)
        self.searchController = UISearchController.init(searchResultsController: nil)
        if #available(iOS 11.0, *) {
            self.navigationItem.searchController = searchController
            self.navigationItem.hidesSearchBarWhenScrolling = false
        } else {
            // Fallback on earlier versions
            self.tableView.tableHeaderView = searchController.searchBar
        }
    }


}

