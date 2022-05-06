//
//  StoryContentCollectionViewCell.swift
//  assignment
//
//  Created by 이경민 on 2022/04/29.
//

import UIKit

final class StoryContentCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "StoryContentCollectionViewCell"

    // MARK: - IBOutlet
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Cell Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
    
    // MARK: - Function
    
    private func setUI() {
        profileImageView.layer.cornerRadius = 48 / 2
        profileImageView.layer.borderColor = UIColor.systemPink.cgColor
        profileImageView.layer.borderWidth = 1
    }
    
    func setData(index: Int) {
        profileImageView.image = StoryModel.storySampleImage[index]
        nameLabel.text = StoryModel.storySampleName[index]
    }
}
