//
//  detailViewController.swift
//  StarWarTrek
//
//  Created by Paul Tangen on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var lowerImage: UIImageView!
    
    var counter: Int = 0
    var views: [UIImageView]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        views = [topImage,lowerImage]
        
        for view in views {
            let gesture = UIPanGestureRecognizer(target: self, action: #selector(dragView))
            view.addGestureRecognizer(gesture)
        }

        // Do any additional setup after loading the view.
    }
    
    func dragView(_ sender: UIPanGestureRecognizer) {
        
        counter += 1
        print("\(counter) : \(sender.description)")
        
        let point = sender.location(in: view)
        let dragView = sender.view!
        dragView.center = point
        self.view.bringSubview(toFront: dragView)
        
        self.didCollide()
        
    }
    
    func didCollide() {
        if topImage.frame.intersects(lowerImage.frame) {
            self.view.backgroundColor = UIColor.getRandomColor()
        } else {
            self.view.backgroundColor = UIColor.red
        }
    }
}
extension UIColor {
        class func getRandomColor() -> UIColor {
            let red: CGFloat = CGFloat(drand48())
            let blue: CGFloat = CGFloat(drand48())
            let green: CGFloat = CGFloat(drand48())
            
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
   
    }


