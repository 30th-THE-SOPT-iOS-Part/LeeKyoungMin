//
//  JoinRequest.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

// MARK: - JoinRequest
struct JoinRequest: Codable {
    let name, email, password: String
}
