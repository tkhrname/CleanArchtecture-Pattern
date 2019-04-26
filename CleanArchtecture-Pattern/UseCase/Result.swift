//
//  Result.swift
//  CleanArchtecture-Pattern
//
//  Created by 渡邊丈洋 on 2019/04/25.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(Error)
}
