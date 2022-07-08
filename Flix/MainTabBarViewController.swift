//
//  ViewController.swift
//  Flix
//
//  Created by Maksymilian Patoń on 08/07/2022.
//

import UIKit

class MainTabBarViewController : UITabBarController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        tabBar.tintColor = .label
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcommingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController ())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Comming"
        vc3.title = "Search"
        vc4.title = "Downloads"
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }


}

