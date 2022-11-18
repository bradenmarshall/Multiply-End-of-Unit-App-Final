//
//  ViewController.swift
//  Mulitply end of unit app
//
//  Created by Jacob Kotzamanis (Student) on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var operatorResultButton: UIButton!
    @IBOutlet weak var operatorClearButton: UIButton!
    @IBOutlet weak var operatorImageView: UIImageView!
    @IBOutlet weak var operatorResultLabel: UILabel!
    @IBOutlet weak var operatorSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var comparison1TextField: UITextField!
    @IBOutlet weak var comparison2TextField: UITextField!
    @IBOutlet weak var comparisonClearButton: UIButton!
    @IBOutlet weak var comparisonResultButton: UIButton!
    @IBOutlet weak var comparisonResultLabel: UILabel!
    
    var operatorResult64 = "64"
    var operatorUse = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayOperatorResultButton(_ sender: UIButton) {
    
        
//       if operatorResultLabel == operatorResult64 {
//               peratorImageView.image = UIimage(named: "yoshi kart")
//            }
//       else {Int(operatorResultLabel.text) % 2 = 1
//            operatorImageView.image = UIimage(named: "stack market up")
//        }
//        else {Int(operatorResultLabel.text) % 2 = 0
//            operatorImageView.image = UIimage(named: "stock market crash")
//        }
        
    }
    
    @IBAction func clearOperatorResultButton(_ sender: UIButton) {
    }
    
 
    //if statement for values on slider
    
    @IBAction func changeOperatorSegmentedController(_ sender: UISegmentedControl) {
//        switch operatorSegmentedController.selectedSegmentIndex {
//        case 0:
            operatorUse
//        default:
        
        }

    
//    @IBAction func changeComparisonSegmentedController(_ sender: UISegmentedControl) {
//    }
//
//    @IBAction func displayComparisonResultButton(_ sender: UIButton) {
//    }
//
//    @IBAction func clearComparisonResultButton(_ sender: UIButton) {
   // }
}

