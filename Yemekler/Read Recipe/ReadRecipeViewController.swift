//
//  ReadRecipeViewController.swift
//  Yemekler
//
//  Created by Mac on 28.05.2018.
//  Copyright © 2018 Varol. All rights reserved.
//

import UIKit

class ReadRecipeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
   
    //MARK: Variables

    var selectedRow = 0
    
    var menuImages = [UIImage(named: "manti"),
                      UIImage(named: "kofte"),
                      UIImage(named: "cacik"),
                      UIImage(named: "alinazik")
                    ]
    
    var recipe = ["manti yapması çok zor, sinop'a gidip teyze'nin yerinde yiyin.",
                  "kofte öf ev kokacak şimdi onu yapana kadar, günaydın'da filan yiyin",
                  "cacik, kolay da tek başına yenmez ki o.",
                  "alinazik çok nazik. uğraşılmaz onunla, boşver."
                  ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 220
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //1. zorunlu fonksiyon
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //2. zorunlu fonksiyon
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadRecipeImageCell", for: indexPath) as! ReadRecipeImageTableViewCell
                cell.foodImage.image = menuImages[selectedRow]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReadRecipeCell", for: indexPath) as! ReadRecipeTableViewCell
            
                cell.recipeText.text = String(recipe[selectedRow])
            return cell
        }
    }
    
    
    //row height için zorunlu fonks
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
