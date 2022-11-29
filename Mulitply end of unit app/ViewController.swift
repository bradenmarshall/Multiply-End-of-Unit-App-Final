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
    @IBOutlet weak var operatorImageView: UIImageView!
    @IBOutlet weak var operatorResultLabel: UILabel!
    @IBOutlet weak var operatorSegmentedController: UISegmentedControl!
    @IBOutlet weak var Slider1: UISlider!
    @IBOutlet weak var Slider2: UISlider!
    
    @IBOutlet weak var comparison1TextField: UITextField!
    @IBOutlet weak var comparison2TextField: UITextField!
    @IBOutlet weak var comparisonResultLabel: UILabel!
    @IBOutlet weak var comparisonSegmentedController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        comparisonResultLabel.text = "True or False"
    }

    @IBAction func ChangeValueSlider(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 100
        number1TextField.text = String(Int(sender.value))
    }
    
    @IBAction func ChangeValueSlider2(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 100
        number2TextField.text = String(Int(sender.value))
    }
    
    @IBAction func numberClearButton(_ sender: UIButton) {
        number1TextField.text = " "
        number2TextField.text = " "
        operatorResultLabel.text = "Result"
        operatorImageView.image = UIImage(named: "images")
    }
    
    
    @IBAction func changeOperatorSegmentedController(_ sender: UISegmentedControl) {
        var number1 = number1TextField.text!
        var number2 = number2TextField.text!
        var finalNumber1 = (number1 as NSString).integerValue
        var finalNumber2 = (number2 as NSString).integerValue
        var totalAnswer = 0
        
        func showImage() {
            if totalAnswer == 64 {
                operatorImageView.image = UIImage(named: "yoshi kart")
                }
            else if totalAnswer % 2 == 1 {
                    operatorImageView.image = UIImage(named: "stock market up")
                    }
                    else if totalAnswer % 2 == 0 {
                    operatorImageView.image = UIImage(named: "stock market crash")
                   }
            number1TextField.resignFirstResponder()
            number2TextField.resignFirstResponder()
        
        }
        
        switch operatorSegmentedController.selectedSegmentIndex {
        case 0:
            totalAnswer = finalNumber1 + finalNumber2
            operatorResultLabel.text = "\(totalAnswer)"
            
           showImage()
                    
        case 1:
            totalAnswer = finalNumber1 - finalNumber2
            operatorResultLabel.text = "\(totalAnswer)"
            
            showImage()
            
        case 2:
            totalAnswer = finalNumber1 * finalNumber2
            operatorResultLabel.text = "\(totalAnswer)"
            
          showImage()
                    
        case 3:
            totalAnswer = finalNumber1 / finalNumber2
            operatorResultLabel.text = "\(totalAnswer)"
            
           showImage()
            
        case 4:
            totalAnswer = finalNumber1 % finalNumber2
            operatorResultLabel.text = "\(totalAnswer)"
            
           showImage()
            
        default:
            totalAnswer = finalNumber1 + finalNumber2
            operatorResultLabel.text = "\(totalAnswer)"
            
           showImage()
        }
        
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

    @IBAction func clearComparisonResultButton(_sender: UIButton) {
        comparisonResultLabel.text = "True or False"
        comparison1TextField.text = " "
        comparison2TextField.text = " "
    }
}
