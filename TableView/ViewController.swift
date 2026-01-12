//
//  ViewController.swift
//  TableView
//
//  Created by Sana Akhanova on 08.01.2026.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    var person: Person?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            guard let person else {
                [nameLabel, surnameLabel, infoLabel].forEach { $0?.text = nil }
                imageView.image = nil
                return
            }
            
            nameLabel.text = person.name
            surnameLabel.text = person.surname
            imageView.image = UIImage(named:person.image)
            infoLabel.text = person.info
    }


}

