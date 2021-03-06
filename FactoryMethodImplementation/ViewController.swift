//
//  ViewController.swift
//  FactoryMethodImplementation
//
//  Created by Gabriel Taques on 17/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    private var currentBread: Bread?
    @IBOutlet weak var currentBreadLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func briocheTapped(_ sender: Any) {
        let factory = BriocheFactory()
        guard currentBread != nil else {
            let currentBread = factory.createBread()
            currentBreadLabel.text = currentBread.bake()
            weightLabel.text = "Weight: \(currentBread.weight)"
            priceLabel.text = "Price: \(currentBread.price)"
            return
        }
    }
    @IBAction func campagneTapped(_ sender: Any) {
        let factory = CampagneFactory()
        guard currentBread != nil else {
            let currentBread = factory.createBread()
            currentBreadLabel.text = currentBread.bake()
            weightLabel.text = "Weight: \(currentBread.weight)"
            priceLabel.text = "Price: \(currentBread.price)"
            return
        }
    }
    @IBAction func croissantTapped(_ sender: Any) {
        let factory = CroissantFactory()
        guard currentBread != nil else {
            let currentBread = factory.createBread()
            currentBreadLabel.text = currentBread.bake()
            weightLabel.text = "Weight: \(currentBread.weight)"
            priceLabel.text = "Price: \(currentBread.price)"
            return
        }
    }
    
}

