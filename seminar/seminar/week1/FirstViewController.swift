//
//  FirstViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/02.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func moveButtonDidTap(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        nextVC.message = dataTextField.text
        
        self.present(nextVC, animated: true, completion: nil)
    }
}
