//
//  WelcomeViewController.swift
//  Autorization page
//
//  Created by Павел on 20.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabBar = tabBarController as? TabBarViewController {
            greetingLabel.text = "Welcome \(tabBar.user.name)"
        }
    }
}
