//
//  SecondInfoPageVC.swift
//  Autorization page
//
//  Created by Павел on 23.04.2022.
//

import UIKit

class SecondInfoPageVC: UIViewController {

    @IBOutlet weak var hegthLabel: UILabel!
    @IBOutlet weak var weigthLabel: UILabel!
    
    var heigth = ""
    var weigth = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hegthLabel.text = "Height: \(heigth)"
        weigthLabel.text = "Weight: \(weigth)"
    }

}
