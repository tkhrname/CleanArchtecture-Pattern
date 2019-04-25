//
//  GitHubRepoStatusList.swift
//  CleanArchtecture-Pattern
//
//  Created by 渡邊丈洋 on 2019/04/25.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

struct GitHubRepoStatusList {
    
    enum Error: Swift.Error {
        case notFoundRepo(ofID: GitHubRepo.ID)
    }
    
    private(set) var statuses: [GitHubRepoStatus]
    
    init(repos: [GitHubRepo], likes: [GitHubRepo.ID: Bool]) {
        // GitHubリポジトリ情報とお気に入り状態を組み合わせてGitRepoStatusを作り、statusesに格納する
        var githubrepoStatuses = [GitHubRepoStatus]()
        for repo in repos {
            let status = GitHubRepoStatus(repo: repo, isLiked: false)
            githubrepoStatuses.append(status)
        }
        self.statuses = githubrepoStatuses
    }
    
    mutating func append(repos: [GitHubRepo], likes: [GitHubRepo.ID: Bool]) {
        // GitHubリポジトリ情報とお気に入り状態を組み合わせてGitRepoStatusを作り、statusesに追加する
        for repo in repos {
            let status = GitHubRepoStatus(repo: repo, isLiked: false)
            self.statuses.append(status)
        }
    }
}
