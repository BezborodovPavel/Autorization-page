//
//  WelcomeViewController.swift
//  Autorization page
//
//  Created by Павел on 20.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome \(userName)"
    }
}
