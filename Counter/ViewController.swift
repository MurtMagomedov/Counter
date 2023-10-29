//
//  ViewController.swift
//  Counter
//
//  Created by Муртазали Магомедов on 29.10.2023.
//

import UIKit

class ViewController: UIViewController {
    var click = 0
    var today = Date.now
    var date = DateFormatter()
    
    @IBOutlet var label: UITextView!
    @IBOutlet var buttonRemove: UIButton!
    @IBOutlet var buttonPlus: UIButton!
    @IBOutlet var buttonMinus: UIButton!
    
    
    override func viewDidLoad() {
        date.dateFormat = "d MMM y | HH:mm"
        
        label.text = "0"
        
       
        super.viewDidLoad()
        
    }
    @IBAction func remove(_ sender: UIButton) {
        click = 0
        label.text = "\(date.string(from: today)): значение сброшено"
    }
    @IBAction func minus(_ sender: UIButton) {
        if click == 0 {
            label.text = "\(date.string(from: today)): попытка уменьшить значение счётчика ниже 0"
        } else {
            click -= 1
            label.text = "\(date.string(from: today)): значение изменено на -1"
        }
    }
    @IBAction func plus(_ sender: UIButton) {
        click += 1
        label.text = "\(date.string(from: today)): значение изменено на +1"
    }
    
}

