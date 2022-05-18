//
//  LoginResponse.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

// MARK: - LoginResponse
struct LoginResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: LoginResponseData?
}

// MARK: - LoginResponseData
struct LoginResponseData: Codable {
    let name, email: String
}
