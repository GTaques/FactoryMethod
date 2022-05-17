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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func briocheTapped(_ sender: Any) {
        let factory = BriocheFactory()
        currentBread = factory.createBread()
        currentBreadLabel.text = currentBread?.bake()
    }
    @IBAction func campagneTapped(_ sender: Any) {
        let factory = CampagneFactory()
        currentBread = factory.createBread()
        currentBreadLabel.text = currentBread?.bake()
    }
    @IBAction func croissantTapped(_ sender: Any) {
        let factory = CroissantFactory()
        currentBread = factory.createBread()
        currentBreadLabel.text = currentBread?.bake()
    }
    
}

