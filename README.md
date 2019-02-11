# SearchControllerDemo
//以下代码用于解决searchBar动画异常:https://www.jianshu.com/p/7218dfa6a044
self.automaticallyAdjustsScrollViewInsets = true
self.extendedLayoutIncludesOpaqueBars = true
self.edgesForExtendedLayout = .all
self.definesPresentationContext = true


iOS11之后新增属性
if #available(iOS 11.0, *) {
self.navigationItem.searchController = searchController
self.navigationItem.hidesSearchBarWhenScrolling = false
} else {
// Fallback on earlier versions
self.tableView.tableHeaderView = searchController.searchBar
}
