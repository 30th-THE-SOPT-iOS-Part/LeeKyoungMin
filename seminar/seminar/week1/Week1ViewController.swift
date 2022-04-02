//
//  Week1ViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/02.
//

import UIKit

class Week1ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nameButtonDidTap(_ sender: Any) {
        nameLabel.text = "새로운 메시지가 도착했어요"
        nameLabel.textColor = .green
    }
}
