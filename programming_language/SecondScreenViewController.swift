//
//  SecondScreenViewController.swift
//  programming_language
//
//  Created by xmod on 28.11.2021.
//

import UIKit

class SecondScreenViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var select : CodeModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = select?.name
        ageLabel.text = String(select!.age)
        imageView.image = select?.image
    
    }
    



}
