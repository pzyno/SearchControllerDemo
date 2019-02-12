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

使用KVO得到searchcontroller的searchbar的textFiled
let searchField = searchController.searchBar.value(forKey: "_searchField") as! UITextField
参考:https://www.jianshu.com/p/c07a295e8aaf

仍存在的问题:
在demo中searchcontroller的动画没有问题,在项目中可能会出现问题.是不是结合tabbatcontroller导致的?
为何会出现动画异常的问题(searchbar偏移不正确)
如何修复?
