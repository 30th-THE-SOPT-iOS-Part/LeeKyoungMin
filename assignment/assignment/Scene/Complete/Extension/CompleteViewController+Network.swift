//
//  CompleteViewController+Network.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

extension CompleteViewController {
    func postJoin() {
        let data = JoinRequest(name: userName, email: userName, password: userPassword)
        
        JoinService.shared.join(data: data) { response in
            switch response {
            case .success(let res):
                guard let responseData = res as? JoinResponse else { return }
                self.makeOKAlert(title: responseData.message,
                                 message: "\(responseData.status)",
                                 okAction: { _ in self.goToLoginViewController() },
                                 completion: nil)
            case .requestErr:
                 print("requestErr")
             case .pathErr:
                 print("pathErr")
             case .serverErr:
                 print("serverErr")
             case .networkFail:
                 print("networkFail")
            }
        }
    }
}
