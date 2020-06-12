//
//  AppDelegate.swift
//  hw_lesson21_UITableViewMoveCell_task23
//
//  Created by Олег Чудновский on 12.06.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

/*
 Реализовать таблицу с одной секцией. Количество элементов в секции – 10.
 В навигейшен бар добавить UIBarButtonItem со стилем edit и UIBarButtonItem со стлем done.
 При нажатии на кнопку edit включить редактирование таблицы.
 В режиме редактирование должна быть возможность перемещать ячейки.
 При нажатии на кнопку done выключить редактирование таблицы. Перемещение должно быть не доступно.
 */

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

