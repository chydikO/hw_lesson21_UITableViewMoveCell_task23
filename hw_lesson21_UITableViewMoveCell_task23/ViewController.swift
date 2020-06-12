//
//  ViewController.swift
//  hw_lesson21_UITableViewMoveCell_task23
//
//  Created by Олег Чудновский on 12.06.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataSource = [Any]()
    
    @IBOutlet var tableView: UITableView?
    var tableViewStyle: UITableView.Style {
        return .plain
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .groupTableViewBackground

        //setupNavigationButtons()
        setupTableView()
        dataSource.append(contentsOf: TestData.makeTestData(20))

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Move you Cell"
    }

    //MARK: -Setup TableView
    private func setupTableView() {
        if self.tableView == nil {
            let tableView = UITableView(frame: self.view.bounds, style: tableViewStyle)
            self.view.addSubview(tableView)
            
            tableView.translatesAutoresizingMaskIntoConstraints = false
            let constraints = [
                tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
                tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
                tableView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0),
                tableView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 0),
            ]
            NSLayoutConstraint.activate(constraints)
            
            self.tableView = tableView
        }
        
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.separatorStyle = .none
        self.tableView?.backgroundColor = .none
        
        registerCells()
    }
    
    func registerCells() {
         self.tableView?.register(UINib(nibName: "DataTableCell", bundle: nil), forCellReuseIdentifier: "DataTableCell")
    }
    
    //MARK: - NavigationButtons
       func setupNavigationButtons() {

           // если текущий рутовый контролер
           // добавляем кнопку "ИНФО"
           if self == self.navigationController?.viewControllers.first as? ViewController {
               // create back button
               self.navigationItem.rightBarButtonItem = self.createRightButton()
           }
       }
       
       func createRightButton() -> UIBarButtonItem? {
           let rightButton = UIBarButtonItem(image: UIImage(named: "icons8-go-back-48"),
                                            style: UIBarButtonItem.Style.done,
                                            target: self,
                                            action: #selector(rightButtonClicked))
           return rightButton
       }
       
       
       @IBAction func rightButtonClicked() {
        
       }
}

//MARK: - UITableViewDataSource, UITableViewDelegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableCell", for: indexPath)
        if let cell = cell  as? DataTableCell, let text = dataSource[indexPath.row] as? String {
            cell.data = text
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let cell = cell as? SeparatedProtocol {
            cell.separatedView?.isHidden = indexPath.row == dataSource.count - 1
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
