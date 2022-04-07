//
//  JoinNameViewController.swift
//  assignment
//
//  Created by 이경민 on 2022/04/06.
//

import UIKit

final class JoinNameViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    // MARK: - Function
    
    private func setUI() {
        setButtonUI()
    }
    
    private func setButtonUI() {
        nextButton.layer.cornerRadius = 15
    }
    
    // MARK: - IBAction
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let passwordVC = self.storyboard?.instantiateViewController(withIdentifier: "JoinPasswordViewController") as? JoinPasswordViewController else { return }
        passwordVC.userName = nameTextField.text ?? ""
        self.navigationController?.pushViewController(passwordVC, animated: true)
    }
}
