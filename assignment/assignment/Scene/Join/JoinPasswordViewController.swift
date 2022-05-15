//
//  JoinPasswordViewController.swift
//  assignment
//
//  Created by 이경민 on 2022/04/06.
//

import UIKit

final class JoinPasswordViewController: UIViewController {
    
    // MARK: - Property
    
    var userName: String = ""
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setTextField()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        removeTextField()
    }
    
    // MARK: - Function
    
    private func setUI() {
        setButtonUI()
    }
    
    private func setButtonUI() {
        nextButton.layer.cornerRadius = 5
    }
    
    private func setTextField() {
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    private func removeTextField() {
        passwordTextField.text?.removeAll()
    }
    
    // MARK: - objc function
    
    @objc func textFieldDidChange(_ sender: UITextField) {
        nextButton.isEnabled = passwordTextField.hasText
    }
    
    // MARK: - IBAction
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func showPasswordButtonDidTap(_ sender: Any) {
        let button = sender as? UIButton
        button?.isSelected.toggle()
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let completeVC = UIStoryboard(name: Const.Storyboard.Complete, bundle: nil).instantiateViewController(withIdentifier: Const.ViewController.CompleteVC) as? CompleteViewController else { return }
        completeVC.modalTransitionStyle = .crossDissolve
        completeVC.modalPresentationStyle = .fullScreen
        completeVC.userName = userName
        completeVC.userPassword = passwordTextField.text ?? ""
        self.present(completeVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: false)
        }
    }
}
