//
//  TabBarViewController.swift
//  Autorization page
//
//  Created by Павел on 23.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate{

    var user: User! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        if let navigationController = viewController as? UINavigationController {
            
            for controllerFromNavigationvVC in navigationController.viewControllers {
                if let firstPage = controllerFromNavigationvVC as? FirstInfoPageVC {
                    firstPage.parentTabBar = self
                }
            }
            
        }
    }
}
