//
//  NetworkResult.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
