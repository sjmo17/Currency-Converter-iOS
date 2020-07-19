//
//  ViewController.swift
//  CurrencyConverter(Challenge)
//
//  Created by Steven Mo on 7/4/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var decimal = false
    
    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var inputAmountTitleLabel: UILabel!
    @IBOutlet weak var inputAmountLabel: UILabel!
    
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var outputAmountTitleLabel: UILabel!
    @IBOutlet weak var outputAmountLabel: UILabel!
    
    @IBOutlet weak var numpadView: UIView!
    @IBOutlet weak var numpad1Button: UIButton!
    @IBOutlet weak var numpad2Button: UIButton!
    @IBOutlet weak var numpad3Button: UIButton!
    @IBOutlet weak var numpad4Button: UIButton!
    @IBOutlet weak var numpad5Button: UIButton!
    @IBOutlet weak var numpad6Button: UIButton!
    @IBOutlet weak var numpad7Button: UIButton!
    @IBOutlet weak var numpad8Button: UIButton!
    @IBOutlet weak var numpad9Button: UIButton!
    @IBOutlet weak var numpad0Button: UIButton!
    @IBOutlet weak var numpadDecButton: UIButton!
    @IBOutlet weak var numpadClearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculate() {
        guard let amountText = self.inputAmountLabel.text,
            let amount = Double(amountText) else {
                return }
        
        let rate = 6.99145
        let amountConverted = amount * rate
        //let roundedAmountConverted = (100 * amountConverted).rounded() / 100
        
        self.outputAmountLabel.text = String(format: "%.2f", amountConverted)
    }
    
    func addNumber(num: Int) {
        if inputAmountLabel.text == "0" {
            inputAmountLabel.text = "\(num)"
        } else {
            inputAmountLabel.text = self.inputAmountLabel.text! + "\(num)"
        }
    }
    
    func setupViews() {
        numpad1Button.layer.borderWidth = 1
        numpad1Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad2Button.layer.borderWidth = 1
        numpad2Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad3Button.layer.borderWidth = 1
        numpad3Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad4Button.layer.borderWidth = 1
        numpad4Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad5Button.layer.borderWidth = 1
        numpad5Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad6Button.layer.borderWidth = 1
        numpad6Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad7Button.layer.borderWidth = 1
        numpad7Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad8Button.layer.borderWidth = 1
        numpad8Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad9Button.layer.borderWidth = 1
        numpad9Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpad0Button.layer.borderWidth = 1
        numpad0Button.layer.borderColor = UIColor.lightGray.cgColor
        
        numpadDecButton.layer.borderWidth = 1
        numpadDecButton.layer.borderColor = UIColor.lightGray.cgColor
        
        numpadClearButton.layer.borderWidth = 1
        numpadClearButton.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func onePressed(_ sender: UIButton) {
        addNumber(num: 1)
        calculate()
    }
    
    @IBAction func twoPressed(_ sender: UIButton) {
        addNumber(num: 2)
        calculate()
    }
    
    @IBAction func threePressed(_ sender: UIButton) {
        addNumber(num: 3)
        calculate()
    }
    
    @IBAction func fourPressed(_ sender: UIButton) {
        addNumber(num: 4)
        calculate()
    }
    
    @IBAction func fivePressed(_ sender: UIButton) {
        addNumber(num: 5)
        calculate()
    }
    
    @IBAction func sixPressed(_ sender: UIButton) {
        addNumber(num: 6)
        calculate()
    }
    
    @IBAction func sevenPressed(_ sender: UIButton) {
        addNumber(num: 7)
        calculate()
    }
    
    @IBAction func eightPressed(_ sender: UIButton) {
        addNumber(num: 8)
        calculate()
    }
    
    @IBAction func ninePressed(_ sender: UIButton) {
        addNumber(num: 9)
        calculate()
    }
    
    @IBAction func zeroPressed(_ sender: UIButton) {
        addNumber(num: 0)
        calculate()
    }
    
    @IBAction func decimalPressed(_ sender: UIButton) {
        if !decimal {
            inputAmountLabel.text = self.inputAmountLabel.text! + "."
            decimal = true
        }
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        inputAmountLabel.text = "0"
        outputAmountLabel.text = "0"
        decimal = false
    }
    
}

