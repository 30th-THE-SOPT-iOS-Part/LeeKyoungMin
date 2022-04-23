//
//  Week3SecondViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/23.
//

import UIKit

protocol SecondViewControllerDelegate {
    func sendData(data: String)
}

class Week3SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataButtonDidTap(_ sender: Any) {
        if let text = dataTextField.text {
            delegate?.sendData(data: text)
        }
        self.navigationController?.popViewController(animated: true)
    }
}
