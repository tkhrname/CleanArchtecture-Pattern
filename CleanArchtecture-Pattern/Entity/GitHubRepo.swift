//
//  GitHubRepo.swift
//  CleanArchtecture-Pattern
//
//  Created by 渡邊丈洋 on 2019/04/24.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

// entityではドメインで共通するデータ型を管理する
// GitHubリポジトリ情報をGitHubRepoで定義

struct GitHubRepo: Equatable {
    struct ID: RawRepresentable, Hashable {
        let rawValue: String
    }
    let id: ID
    let fullName: String
    let description: String
    let language: String
    let stargazersCount: Int
    
    public static func ==(lhs: GitHubRepo, rhs: GitHubRepo) -> Bool {
        return lhs.id == rhs.id
    }
}
