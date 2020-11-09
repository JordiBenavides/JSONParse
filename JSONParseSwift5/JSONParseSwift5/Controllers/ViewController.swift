//
//  ViewController.swift
//  JSONParseSwift5
//
//  Created by Jordi Milla on 07/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewCell: UITableViewCell?
    @IBOutlet weak var tableView: UITableView!
    
    private let kivaLoanURL = "https://api.kivaws.org/v1/loans/newest.json"
    private var loans = [Loan]()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        return cell ??  UITableViewCell()
    }

}

