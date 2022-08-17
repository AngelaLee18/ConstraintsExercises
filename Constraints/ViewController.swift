//
//  ViewController.swift
//  Constraints
//
//  Created by Angela Lee on 09/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableViewData: [MessagesData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewData =  DataLoader().loadMessages()
        tableView.reloadData() 

        // Do any additional setup after loading the view.
        //parseJSON()
        
        //tableView.register(UITableViewCell.self,
          //                 forCellReuseIdentifier: "TableViewCellRecived")
        //tableView.register(UITableViewCell.self,
          //                 forCellReuseIdentifier: "TableViewCellSend")
        //tableView.dataSource = self

    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if (tableViewData[indexPath.row].username != "Me") {
            
            guard let cellR = tableView.dequeueReusableCell(
                withIdentifier:"TableViewCellRecived",
                for: indexPath) as?  RecivedMessegeCell else {
                print("Error en obtener la celda")
                return UITableViewCell()
            }
            
            cellR.user.text = tableViewData[indexPath.row].username
            cellR.messages.text = tableViewData[indexPath.row].message
            cellR.time.text = tableViewData[indexPath.row].timeMessage
            return cellR
        }
        else {
            
            guard let cellS =
                    tableView.dequeueReusableCell(
                        withIdentifier: "TableViewCellSend",
                        for: indexPath) as? SendMessegeCell else {
                return UITableViewCell()
            }
            
            cellS.sMessage.text = tableViewData[indexPath.row].message
            cellS.sTime.text = tableViewData[indexPath.row].timeMessage
            return cellS
        }
    }
}





