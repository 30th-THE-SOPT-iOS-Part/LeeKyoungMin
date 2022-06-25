//
//  HermesViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/06/25.
//

import Foundation

import SnapKit

final class HermesViewController: UIViewController {
    lazy var myView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureLayout()
    }
}


extension HermesViewController {
    private func configureUI() {
        myView.backgroundColor = .green
    }
    
    private func configureLayout() {
//        myView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(myView)
//        NSLayoutConstraint.activate([
//            myView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 8),
//            myView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: -8),
//            myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
//            myView.heightAnchor.constraint(equalToConstant: 100)
//        ])
        
        view.addSubview(myView)
        myView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(8)
            $0.top.equalToSuperview().offset(20)
            $0.height.equalTo(100)
        }
    }
}
