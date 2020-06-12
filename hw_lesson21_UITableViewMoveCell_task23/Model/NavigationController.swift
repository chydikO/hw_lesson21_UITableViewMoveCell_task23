//
//  NavigationController.swift
//  hw_lesson21_UITableViewMoveCell_task23
//
//  Created by Олег Чудновский on 12.06.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // влияет на цвет фона навигейшен бара
        self.navigationBar.barTintColor = .lightGray
        
        // задаем аттрибуты для заголовка
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 22), NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}
