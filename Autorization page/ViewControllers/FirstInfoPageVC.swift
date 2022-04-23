//
//  FirstInfoPageVC.swift
//  Autorization page
//
//  Created by Павел on 23.04.2022.
//

import UIKit

class FirstInfoPageVC: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var proffLabel: UILabel!
    
    var parentTabBar: TabBarViewController! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageLabel.text = "Age: \(parentTabBar.user.age)"
        proffLabel.text = "Profession \(parentTabBar.user.age)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let secondPage = segue.destination as? SecondInfoPageVC else {return}
        
        secondPage.weigth = parentTabBar.user.weigth
        secondPage.heigth = parentTabBar.user.heigth
    }
}
