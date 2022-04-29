//
//  UILabel+.swift
//  assignment
//
//  Created by 이경민 on 2022/04/15.
//

import UIKit

extension UILabel {
    ///Label의 일부만 색을 바꿀 수 있는 익스텐션
    func setPartialLabelColor(targetStringList: [String], color: UIColor?) {
        let fullText = text ?? ""
        let attributedString = NSMutableAttributedString(string: fullText)
        targetStringList.forEach {
            let range = (fullText as NSString).range(of: $0)
            attributedString.addAttributes([.font: font as Any, .foregroundColor: color as Any], range: range)
        }
        attributedText = attributedString
    }
}
