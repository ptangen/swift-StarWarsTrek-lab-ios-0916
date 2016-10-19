//
//  ViewController.swift
//  StarWarTrek
//
//  Created by James Campagno on 10/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    @IBAction func NextButton(_ sender: AnyObject) {
        shouldPerformSegue(withIdentifier: "showDetail", sender: self)
    }
    
    @IBOutlet weak var starWarsLabel: UILabel!
    @IBOutlet weak var starWarsScrollView: UIScrollView!
    @IBOutlet weak var starWarsStackView: UIStackView!
    
    @IBOutlet weak var Anakin: UIImageView!
    
    @IBOutlet weak var HanSolo: UIImageView!
    @IBOutlet weak var Chewbacca: UIImageView!
    @IBOutlet weak var starTrekLabel: UILabel!
    @IBOutlet weak var starTrekStackView: UIStackView!
    @IBOutlet weak var starTrekScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starWarsLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive = true
        starWarsLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        starWarsLabel.translatesAutoresizingMaskIntoConstraints = false
    
        
        starWarsScrollView.topAnchor.constraint(equalTo: self.starWarsLabel.bottomAnchor, constant: 40).isActive = true
        starWarsScrollView.centerXAnchor.constraint(equalTo: self.starWarsLabel.centerXAnchor).isActive = true
        starWarsScrollView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        starWarsScrollView.widthAnchor.constraint(equalTo: starWarsScrollView.heightAnchor).isActive = true
        
        starWarsStackView.topAnchor.constraint(equalTo: self.starWarsScrollView.topAnchor, constant: 0).isActive = true
        starWarsStackView.leftAnchor.constraint(equalTo: self.starWarsScrollView.leftAnchor, constant: 0).isActive = true
        starWarsStackView.bottomAnchor.constraint(equalTo: self.starWarsScrollView.bottomAnchor, constant: 0).isActive = true
        starWarsStackView.rightAnchor.constraint(equalTo: self.starWarsScrollView.rightAnchor, constant: 0).isActive = true
        
        starWarsStackView.widthAnchor.constraint(equalTo: self.starWarsScrollView.widthAnchor, multiplier: 3.0).isActive = true
        starWarsStackView.heightAnchor.constraint(equalTo: self.starWarsScrollView.heightAnchor).isActive = true
        
        starWarsScrollView.translatesAutoresizingMaskIntoConstraints = false
        starWarsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        starTrekLabel.topAnchor.constraint(equalTo: self.starWarsScrollView.bottomAnchor, constant: 40).isActive = true
        starTrekLabel.centerXAnchor.constraint(equalTo: self.starWarsScrollView.centerXAnchor).isActive = true
        starTrekLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        starTrekScrollView.topAnchor.constraint(equalTo: self.starTrekLabel.bottomAnchor, constant: 40).isActive = true
        starTrekScrollView.centerXAnchor.constraint(equalTo: self.starTrekLabel.centerXAnchor).isActive = true
        starTrekScrollView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        starTrekScrollView.widthAnchor.constraint(equalTo: starTrekScrollView.heightAnchor).isActive = true
        
        starTrekStackView.topAnchor.constraint(equalTo: self.starTrekScrollView.topAnchor, constant: 0).isActive = true
        starTrekStackView.leftAnchor.constraint(equalTo: self.starTrekScrollView.leftAnchor, constant: 0).isActive = true
        starTrekStackView.bottomAnchor.constraint(equalTo: self.starTrekScrollView.bottomAnchor, constant: 0).isActive = true
        starTrekStackView.rightAnchor.constraint(equalTo: self.starTrekScrollView.rightAnchor, constant: 0).isActive = true
        
        starTrekStackView.widthAnchor.constraint(equalTo: self.starTrekScrollView.widthAnchor, multiplier: 4.0).isActive = true
        starTrekStackView.heightAnchor.constraint(equalTo: self.starTrekScrollView.heightAnchor).isActive = true
        
        starTrekScrollView.translatesAutoresizingMaskIntoConstraints = false
        starTrekStackView.translatesAutoresizingMaskIntoConstraints = false

    }
    
 
}


