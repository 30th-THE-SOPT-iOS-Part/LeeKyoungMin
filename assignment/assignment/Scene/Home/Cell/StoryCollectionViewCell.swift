//
//  StoryCollectionViewCell.swift
//  assignment
//
//  Created by 이경민 on 2022/04/29.
//

import UIKit

final class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "StoryCollectionViewCell"
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var storyContentCollectionView: UICollectionView!
    
    // MARK: - Cell Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setCollectionView()
    }
    
    // MARK: - Function
    
    private func setCollectionView() {
        storyContentCollectionView.delegate = self
        storyContentCollectionView.dataSource = self
        let nib = UINib(nibName: StoryContentCollectionViewCell.identifier, bundle: nil)
        storyContentCollectionView.register(nib, forCellWithReuseIdentifier: StoryContentCollectionViewCell.identifier)
    }
}

extension StoryCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoryModel.storySampleName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryContentCollectionViewCell.identifier, for: indexPath) as? StoryContentCollectionViewCell else { return UICollectionViewCell() }
        cell.setData(index: indexPath.item)
        return cell
    }
}

extension StoryCollectionViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 58, height: 72)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
}

