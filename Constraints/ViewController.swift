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
        
        //tableView.estimatedRowHeight = 68.0
        //tableView.rowHeight = UITableView.automaticDimension
        tableViewData =  DataLoader().loadMessages()
        tableView.reloadData() 

        // Do any additional setup after loading the view.

    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if (tableViewData[indexPath.row].username != "Me") {
            
            guard let cellR = tableView.dequeueReusableCell(
                withIdentifier:"tableViewCellRecived",
                for: indexPath) as?  RecivedMessegeCell else {
                print("Error en obtener la celda")
                return UITableViewCell()
            }
            
            /*cellR.user.text = tableViewData[indexPath.row].username
            cellR.messages.text = tableViewData[indexPath.row].message
            cellR.time.text = tableViewData[indexPath.row].timeMessage*/
            cellR.ShowMessages(tableViewData[indexPath.row])
            return cellR
        }
        else {
            
            guard let cellS =
                    tableView.dequeueReusableCell(
                        withIdentifier: "tableViewCellSend",
                        for: indexPath) as? SendMessegeCell else {
                return UITableViewCell()
            }
            
            /*cellS.sMessage.text = tableViewData[indexPath.row].message
            cellS.sTime.text = tableViewData[indexPath.row].timeMessage*/
            cellS.ShowMessages(tableViewData[indexPath.row])
            return cellS
        }
    }
}





