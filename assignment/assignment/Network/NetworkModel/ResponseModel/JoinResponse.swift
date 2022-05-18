//
//  JoinResponse.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

// MARK: - JoinResponse
struct JoinResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: JoinResponseData?
}

// MARK: - JoinResponseData
struct JoinResponseData: Codable {
    let id: Int
}
