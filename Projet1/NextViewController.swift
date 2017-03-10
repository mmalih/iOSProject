//
//  NextViewController.swift
//  Projet1
//
//  Created by Maeva Malih on 17/02/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import UIKit
import CoreLocation

@objc protocol NextViewControllerDelegate {
    @objc optional func nextViewController(_ nextViewController: NextViewController, didAddItem item: String)
}

class NextViewController: UIViewController {
    
    weak var delegate: NextViewControllerDelegate?
    
    @IBAction func touchClick(_ sender: Any) {
        let str = String(arc4random())
        self.delegate?.nextViewController?(self, didAddItem: str)
    }

    @IBAction func name(_ sender: Any) {
    }
    
    
    @IBAction func ecole(_ sender: Any) {
    }
    
    @IBAction func hopital(_ sender: Any) {
    }
    
    
    @IBAction func commerce(_ sender: Any) {
        
    }
    
    
    @IBAction func lattitude(_ sender: Any) {
    }
    
    
    @IBAction func longitude(_ sender: Any) {
    }
    
    
    @IBAction func valider(_ sender: Any) {
    }
}
