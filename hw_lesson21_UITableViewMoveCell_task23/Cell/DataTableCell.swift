//
//  DataTableCell.swift
//  hw_lesson21_UITableViewMoveCell_task23
//
//  Created by Олег Чудновский on 12.06.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class DataTableCell: UITableViewCell {

    @IBOutlet var contentLable: UILabel?
    @IBOutlet var separated: UIView?
        
    var data: String? {
        didSet {
            if let content = self.data {
                contentLable?.text = content
            }
            else {
                contentLable?.text = nil
            }
        }
    }
}

extension DataTableCell: SeparatedProtocol {
    var separatedView: UIView? {
        return separated
    }
}
