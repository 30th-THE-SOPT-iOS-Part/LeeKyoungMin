//
//  HomeViewController+CollectionView.swift
//  assignment
//
//  Created by 이경민 on 2022/04/29.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PostModel.postSampleContent.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else { return UICollectionViewCell() }
            return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostContentCollectionViewCell.identifier, for: indexPath) as? PostContentCollectionViewCell else { return UICollectionViewCell() }
            cell.delegate = self
            cell.setData(index: indexPath.item-1)
            return cell
        }
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var cellHeight: CGFloat = 0
        switch indexPath.item {
        case 0: cellHeight = 72
        default: cellHeight = 488 + (CGFloat)((indexPath.item-1) * 12)
        }
        return CGSize(width: UIScreen.main.bounds.width, height: cellHeight)
    }
}
