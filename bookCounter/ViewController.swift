//
//  ViewController.swift
//  bookCounter
//
//  Created by  Hello World on 11.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var infoCount: UILabel!
    @IBOutlet weak var logTextView: UITextView!
   
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logTextView.text = "История изменений:\n"
    }
    
    @IBAction func dereaseAction() {
        guard count > 0 else { return }
        count -= 1
        updateCounter()
        logAction(action: "значение изменено на -1")
    }
    
    @IBAction func increaseAction() {
        count += 1
        updateCounter()
        logAction(action: "значение изменено на +1")
    }
    
    @IBAction func clearAction() {
        count = 0
        updateCounter()
        logAction(action: "значение сброшено")
    }
    
    @IBAction func tapButton() {
        count += 1
        updateCounter()
    }
    
    func updateCounter() {
        infoCount.text = "Значение счетчика: \(count)"
    }
    
    func logAction(action: String) {
        let line = "\(Date()): \(action)\n"
        logTextView.text += line
    }
}
