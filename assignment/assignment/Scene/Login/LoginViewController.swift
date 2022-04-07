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
        loginButton.layer.cornerRadius = 15
    }
    
    // MARK: - IBAction
    
    @IBAction func completeButtonDidTap(_ sender: Any) {
        guard let completeVC = UIStoryboard(name: "Complete", bundle: nil).instantiateViewController(withIdentifier: "CompleteViewController") as? CompleteViewController else { return }
        completeVC.modalTransitionStyle = .crossDissolve
        completeVC.modalPresentationStyle = .fullScreen
        completeVC.userName = emailTextField.text ?? ""
        self.present(completeVC, animated: true)
    }
    
    @IBAction func joinButtonDidTap(_ sender: Any) {
        guard let joinNameVC = UIStoryboard(name: "Join", bundle: nil).instantiateViewController(withIdentifier: "JoinNameViewController") as? JoinNameViewController else { return }
        self.navigationController?.pushViewController(joinNameVC, animated: true)
    }
}
