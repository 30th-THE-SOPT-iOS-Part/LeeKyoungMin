//
//  CompleteViewController.swift
//  assignment
//
//  Created by 이경민 on 2022/04/06.
//

import UIKit

final class CompleteViewController: UIViewController {
    
    // MARK: - Property
    
    var userName: String = ""
    var userPassword: String = ""
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var completeButton: UIButton!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setUserName()
    }
    
    // MARK: - Function
    
    private func setUI() {
        setButtonUI()
    }
    
    private func setButtonUI() {
        completeButton.layer.cornerRadius = 5
    }
    
    private func setUserName() {
        welcomeLabel.text = """
        \(userName)님 Instagram에
        오신 것을 환영합니다
        """
    }
    
    func goToLoginViewController() {
        guard let loginVC = UIStoryboard(name: Const.Storyboard.Login, bundle: nil).instantiateViewController(withIdentifier: Const.ViewController.LoginVC) as? LoginViewController else { return }
        changeRootViewController(loginVC)
    }
    
    // MARK: - IBAction
    
    @IBAction func completeButtonDidTap(_ sender: Any) {
        postJoin()
    }
    
    @IBAction func anotherAccountButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
