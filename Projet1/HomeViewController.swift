//
//  HomeViewController.swift
//  Projet1
//
//  Created by Maeva Malih on 17/02/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HomeViewController: UIViewController, NextViewControllerDelegate, MKMapViewDelegate {
    
    var info: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "home"  // titre

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(self.info)")
    }
    
    @IBAction func next(_ sender: Any) {
        let nextViewController = NextViewController()
        nextViewController.delegate = self
        self.navigationController?.pushViewController( nextViewController, animated: true)
    }

    func nextViewController(_ nextViewController: NextViewController, didAddItem item: String) {
        self.info.append(item)
        _ = self.navigationController?.popViewController(animated: true)
    }
   
    
    @IBOutlet weak var mapView: MKMapView!
}
