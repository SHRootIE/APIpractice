//
//  ViewController.swift
//  TableViewPractice1
//
//  Created by ILYA on 22.10.2020.
//

import UIKit



class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var posts = [String] ()
    
    @IBOutlet weak var tableViewInf: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataOfAPI = "https://jsonplaceholder.typicode.com/posts"
        let url = NSURL(fileURLWithPath: dataOfAPI)
        let urlRequest = NSURLRequest:
        
    }
    
    
    
    func tableView(_ tableViewInf: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    func tableView(_ tableViewInf: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellInfo = tableViewInf.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        cellInfo.textLabel?.text = posts[indexPath.row]
        return cellInfo
    }

}

