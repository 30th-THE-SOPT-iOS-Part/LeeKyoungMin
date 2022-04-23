//
//  Week3FirstViewController.swift
//  seminar
//
//  Created by 이경민 on 2022/04/23.
//

import UIKit

class Week3FirstViewController: UIViewController, SecondViewControllerDelegate {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func sendData(data: String) {
        dataLabel.text = data
    }
    
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Week3SecondViewController") as? Week3SecondViewController else { return }
        nextVC.delegate = self
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
