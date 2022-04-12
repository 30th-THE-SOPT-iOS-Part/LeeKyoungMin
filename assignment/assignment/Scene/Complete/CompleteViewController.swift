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
        completeButton.layer.cornerRadius = 15
    }
    
    private func setUserName() {
        welcomeLabel.text = "\(userName)님 Instagram에 오신 것을 환영합니다"
    }
    
    // MARK: - IBAction
    
    @IBAction func completeButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
