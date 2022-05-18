//
//  JoinService.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

import Alamofire

class JoinService {
    static let shared = JoinService()
    
    private init() {}
    
    func join(data: JoinRequest,
              completion: @escaping (NetworkResult<Any>) -> Void) {
        let url = APIConstants.joinURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = ["name": data.name, "email": data.email, "password": data.password]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body, encoding: JSONEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                let networkResult = self.judgeStatus(by: statusCode, value)
                completion(networkResult)
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200..<300: return isVaildData(data: data)
        case 400..<410: return isVaildData(data: data)
        case 500: return .serverErr
        default: return .networkFail
        }
    }
    
    private func isVaildData(data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(JoinResponse.self, from: data)
        else { return .pathErr }
        return .success(decodedData as Any)
    }
}
