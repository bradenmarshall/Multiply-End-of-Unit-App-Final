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
    @IBOutlet weak var comparisonSegmentedController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        comparisonResultLabel.text = "True or False"
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
          //  operatorUse
//        default:
        
        }
    
    func comparisonCaptilizeStatements() {
        if comparisonResultLabel.text == "true" {
            comparisonResultLabel.text = "True"
        }
        else if comparisonResultLabel.text == "false" {
            comparisonResultLabel.text = "False"
        }
    }
    func compairsonResigningKeyboard() {
        comparison1TextField.resignFirstResponder()
        comparison2TextField.resignFirstResponder()
    }
    
    @IBAction func changeComparisonSegmentedController(_ sender: UISegmentedControl) {
        var comparisonFirstNumber = comparison1TextField.text!
        var comparisonSecondNumber = comparison2TextField.text!
        let comparisonFirstValue = (comparisonFirstNumber as NSString).intValue
        let comparisonSecondValue = (comparisonSecondNumber as NSString).intValue
        var comparisonTotalAnswer = false
        switch comparisonSegmentedController.selectedSegmentIndex {
        
        case 0:
            comparisonTotalAnswer = comparisonFirstValue > comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()
        case 1:
            comparisonTotalAnswer = comparisonFirstValue >= comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()
        case 2:
            comparisonTotalAnswer = comparisonFirstValue < comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()
        case 3:
            comparisonTotalAnswer = comparisonFirstValue <= comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()
        case 4:
            comparisonTotalAnswer = comparisonFirstValue == comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()
        case 5:
            comparisonTotalAnswer = comparisonFirstValue != comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()
        default:
            comparisonTotalAnswer = comparisonFirstValue > comparisonSecondValue
            comparisonResultLabel.text = "\(comparisonTotalAnswer)"
            compairsonResigningKeyboard()
            comparisonCaptilizeStatements()        }
    }

    @IBAction func displayComparisonResultButton(_ sender: UIButton) {}

    @IBAction func clearComparisonResultButton(_sender: UIButton) {
        comparisonResultLabel.text = "True or False"
        comparison1TextField.text = " "
        comparison2TextField.text = " "
    }
}
