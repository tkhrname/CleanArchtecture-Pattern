//
//  Error.swift
//  CleanArchtecture-Pattern
//
//  Created by 渡邊丈洋 on 2019/04/25.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

enum FetchingError: Error {
    case failedToFetchRepos(Error)
    case failedToFetchLikes(Error)
    case otherError
}

enum SavingError: Error {
    case failedToSaveLike
}
