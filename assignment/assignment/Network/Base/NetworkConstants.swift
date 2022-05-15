//
//  NetworkConstants.swift
//  assignment
//
//  Created by 이경민 on 2022/05/15.
//

import Foundation

struct APIConstants {
    
    // MARK: - BASE URL
    
    static let baseURL = "http://13.124.62.236/"
    
    // MARK: - AUTH
    
    static let loginURL = baseURL + "auth/signin"
    static let joinURL = baseURL + "auth/signup"
}
