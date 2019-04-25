//
//  ReposLikesUseCase.swift
//  CleanArchtecture-Pattern
//
//  Created by 渡邊丈洋 on 2019/04/25.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

// Input
protocol ReposLikesUseCaseProtocol: AnyObject {
    // キーワードを使ったサーチ
    func startFetch(using keywords: [String])
    // お気に入り済みGitHubリポジトリ一覧の取得
    func collectLikedRepos()
    // お気に入りの追加・削除
    func set(liked: Bool, for repo: GitHubRepo)
}

// Output
protocol ReposLikesUseCaseOutput {
    // GitHubリポジトリ(+お気に入りON/OFF)の情報が更新された時に呼ばれる
    func useCaseDidUpdateStatuses(_ repoStatuses: [GitHubRepoStatus])
    // Use Caseの関係する処理でエラーがあった時に呼ばれる
    func useCaseDidReceiveError(_ error: Error)
}
