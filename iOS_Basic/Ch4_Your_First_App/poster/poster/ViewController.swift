//
//  ViewController.swift
//  poster
//
//  Created by Heesun Lee on 12/17/20.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    @IBOutlet weak var bountyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
    }

    @IBAction func showAlert() {
        // add alert
        let message = "Current bounty is \(currentValue)."
        
        let alert = UIAlertController(title: "Refresh bounty", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler : { action in
            self.refresh()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func refresh() {
        let randomNum = arc4random_uniform(10000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "$ \(currentValue)"
    }
    
//    @IBAction func showSecondAlert() {
//        let alert = UIAlertController(title: "second alert", message: "second alert complete", preferredStyle: .alert)
//        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
//
//        alert.addAction(action)
//
//        present(alert, animated: true, completion: nil)
//    }
    
    
}

