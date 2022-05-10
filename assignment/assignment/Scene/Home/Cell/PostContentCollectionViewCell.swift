//
//  PostContentCollectionViewCell.swift
//  assignment
//
//  Created by 이경민 on 2022/04/29.
//

import UIKit

protocol PostActionProtocol {
    func likeButtonTapAction()
}

final class PostContentCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PostContentCollectionViewCell"
    
    // MARK: - Property
    
    var delegate: PostActionProtocol?

    // MARK: - IBOutlet
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet var userNameLabelCollection: [UILabel]!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
    // MARK: - Cell Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    // MARK: - Function
    
    private func setUI() {
        profileImageView.layer.cornerRadius = 24 / 2
        profileImageView.layer.borderColor = UIColor.systemPink.cgColor
        profileImageView.layer.borderWidth = 1
    }
    
    func setData(index: Int) {
        profileImageView.image = StoryModel.storySampleImage[index]
        contentImageView.image = PostModel.postSampleImage[index]
        userNameLabelCollection.forEach {
            $0.text = StoryModel.storySampleName[index]
        }
        contentLabel.text = PostModel.postSampleContent[index]
        likeCountLabel.text = "좋아요 \((index+1)*2)개"
        commentCountLabel.text = "댓글 \((index+1)*2)개 모두 보기"
    }
    
    // MARK: - IBAction
    
    @IBAction func likeButtonDidTap(_ sender: Any) {
        let button = sender as? UIButton
        button?.isSelected.toggle()
        self.delegate?.likeButtonTapAction()
    }
}
