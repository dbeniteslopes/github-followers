import UIKit

class GFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]
    }
    
    func createSearchNavigationController() -> UINavigationController {
        let searchNavigationController = SearchViewController()
        searchNavigationController.title = "Search"
        searchNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchNavigationController)
    }
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoritesNavigationController = FavoritesViewController()
        favoritesNavigationController.title = "Favorites"
        favoritesNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesNavigationController)
    }
}
