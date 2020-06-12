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
        let array = (0..<n).map{ _ in Int(arc4random_uniform(20) + 1) }.removingDuplicates().sorted().map(){String($0)}
        return array.count > 10 ? array.dropLast(array.count - 10) : array
    }
}
