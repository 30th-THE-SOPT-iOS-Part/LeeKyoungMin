//
//  HomeViewController.swift
//  assignment
//
//  Created by 이경민 on 2022/04/15.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Property
    
    let refreshControl = UIRefreshControl()

    // MARK: - IBOutlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - VC Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        initRefreshControl()
    }
    
    // MARK: - Function
    
    private func setCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib = UINib(nibName: PostContentCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: PostContentCollectionViewCell.identifier)
    }
    
    private func initRefreshControl() {
         refreshControl.addTarget(self,
                                  action: #selector(refreshCollectionView(refresh:)),
                                  for: .valueChanged)
         refreshControl.backgroundColor = .white
         refreshControl.tintColor = .darkGray
         collectionView.refreshControl = refreshControl
     }

    // MARK: - objc function
    
     @objc private func refreshCollectionView(refresh: UIRefreshControl) {
         DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
             self.collectionView.reloadData()
             refresh.endRefreshing()
         }
     }
}

extension HomeViewController: PostActionProtocol {
    func likeButtonTapAction() {
        guard let loginVC = UIStoryboard(name: Const.Storyboard.Login, bundle: nil).instantiateViewController(withIdentifier: Const.ViewController.LoginVC) as? LoginViewController else { return }
        self.present(loginVC, animated: true, completion: nil)
    }
}
