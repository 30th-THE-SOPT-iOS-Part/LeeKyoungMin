//
//  SecondViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/02.
//

import UIKit

class SecondViewController: UIViewController {
    
    var message: String?

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMessage()
    }
    
    private func setMessage() {
        if let message = message {
            dataLabel.text = message
            dataLabel.sizeToFit()
        }
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        self.navigationController?.popViewController(animated: true)
    }
    
}
