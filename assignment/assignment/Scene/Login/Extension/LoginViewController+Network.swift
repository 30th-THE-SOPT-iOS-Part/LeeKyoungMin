//
//  LoginViewController+Network.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

extension LoginViewController {
    func postLogin() {
        let data = LoginRequest(name: emailTextField.text ?? "",
                                email: emailTextField.text ?? "",
                                password: passwordTextField.text ?? "")
        
        LoginService.shared.login(data: data) { response in
            switch response {
            case .success(let res):
                guard let responseData = res as? LoginResponse else { return }
                self.makeOKAlert(title: responseData.message,
                            message: "\(responseData.status)",
                            okAction: { _ in self.goToHomeViewController() },
                            completion: nil)
            case .requestErr:
                print("requestErr")
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
    }
}
