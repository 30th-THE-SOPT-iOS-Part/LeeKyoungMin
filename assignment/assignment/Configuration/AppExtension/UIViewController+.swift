//
//  UIViewController+.swift
//  assignment
//
//  Created by 이경민 on 2022/04/16.
//

import UIKit

extension UIViewController {
    func changeRootViewController(_ viewControllerToPresent: UIViewController) {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = viewControllerToPresent
            UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil)
        } else {
            viewControllerToPresent.modalPresentationStyle = .overFullScreen
            self.present(viewControllerToPresent, animated: true, completion: nil)
        }
    }
    
    func makeOKAlert(title: String,
                      message: String,
                      okAction: ((UIAlertAction) -> Void)? = nil,
                      completion: (() -> Void)? = nil) {
         let alertViewController = UIAlertController(title: title,
                                                     message: message,
                                                     preferredStyle: .alert)

         let okAction = UIAlertAction(title: "확인", style: .default, handler: okAction)
         alertViewController.addAction(okAction)

         self.present(alertViewController, animated: true, completion: completion)
     }
}
