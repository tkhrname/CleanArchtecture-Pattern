//
//  GitHubRepoStatus.swift
//  CleanArchtecture-Pattern
//
//  Created by 渡邊丈洋 on 2019/04/25.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

// GitHubリポジトリのお気に入り状態を管理
struct GitHubRepoStatus: Equatable {
    let repo: GitHubRepo
    let isLiked: Bool
    static func ==(lhs: GitHubRepoStatus, rhs: GitHubRepoStatus) -> Bool {
        return lhs.repo == rhs.repo
    }
}
