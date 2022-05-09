//
//  LoginDataModel.swift
//  seminar
//
//  Created by 이경민 on 2022/05/07.
//

import Foundation

// MARK: - Welcome
struct LoginResponse: Codable {
    let status: Int
//    let success: Bool?
    let message: String
    let data: LoginData?
}

// MARK: - DataClass
struct LoginData: Codable {
    let name: String
    let email: String
}

struct MessageData: Codable {
    let reason: String
    let location: String
}
