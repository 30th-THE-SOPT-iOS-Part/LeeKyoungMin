//
//  DelegatePracticeViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/23.
//

import UIKit

class DelegatePracticeViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
}

extension DelegatePracticeViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("편집시작")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("return")
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("편집끝")
    }
}
