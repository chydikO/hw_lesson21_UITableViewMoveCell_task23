//
//  TestData.swift
//  hw_lesson21_UITableViewMoveCell_task23
//
//  Created by Олег Чудновский on 12.06.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import Foundation

class TestData  {
    static func makeTestData(_ n: Int) -> [String] {
        return (0..<n).map{ _ in Int(arc4random_uniform(20) + 1) }.sorted().map(){String($0)}
    }
}
