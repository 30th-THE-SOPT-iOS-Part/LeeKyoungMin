//
//  LoginViewController.swift
//  assignment
//
//  Created by 이경민 on 2022/04/06.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IBOutlet
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var joinLabel: UILabel!
    
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
        setLabelUI()
    }
    
    private func setButtonUI() {
        loginButton.layer.cornerRadius = 5
    }
    
    private func setLabelUI() {
        joinLabel.setPartialLabelColor(targetStringList: ["가입하기"], color: UIColor.tintColor)
    }
    
    private func setTextField() {
        [emailTextField, passwordTextField].forEach {
            $0?.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        }
    }

    private func removeTextField() {
        [emailTextField, passwordTextField].forEach {
            $0?.text?.removeAll()
        }
    }
    
    func goToHomeViewController() {
        guard let homeVC = UIStoryboard(name: Const.Storyboard.Main, bundle: nil).instantiateViewController(withIdentifier: Const.ViewController.MainTabbarVC) as? MainTabbarController else { return }
        changeRootViewController(homeVC)
    }
    
    // MARK: - objc function
    
    @objc func textFieldDidChange(_ sender: UITextField) {
        loginButton.isEnabled = emailTextField.hasText && passwordTextField.hasText
    }
    
    // MARK: - IBAction
    
    @IBAction func showPasswordButtonDidTap(_ sender: Any) {
        let button = sender as? UIButton
        button?.isSelected.toggle()
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    @IBAction func completeButtonDidTap(_ sender: Any) {
        postLogin()
    }
    
    @IBAction func joinButtonDidTap(_ sender: Any) {
        guard let joinNameVC = UIStoryboard(name: Const.Storyboard.Join, bundle: nil).instantiateViewController(withIdentifier: Const.ViewController.JoinNameVC) as? JoinNameViewController else { return }
        self.navigationController?.pushViewController(joinNameVC, animated: true)
    }
}
