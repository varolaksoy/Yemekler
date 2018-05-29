//
//  HeaderTableViewController.swift
//  Yemekler
//
//  Created by Mac on 28.05.2018.
//  Copyright © 2018 Varol. All rights reserved.
//

import UIKit

class HeaderTableViewController: UITableViewController {
    
    let headerArray = ["Dolma Mantı", "Köfte", "Cacık", "Ali Nazik Kebabı"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return headerArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderTableViewCell
        let rowNumber = indexPath.row
        cell.headerText.text = headerArray[rowNumber]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowNumber = indexPath.row
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ReadRecipeStoryboardID") as! ReadRecipeViewController
        vc.selectedRow = rowNumber
        vc.title = headerArray[rowNumber]
    
        
    
        self.show(vc, sender: nil)
    }
    

}
