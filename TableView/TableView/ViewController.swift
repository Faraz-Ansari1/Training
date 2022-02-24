//
//  ViewController.swift
//  TableView
//
//  Created by daffolapmac-82 on 22/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Faraz","Ahmed","Ansari","iOS","is","Fun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You Tapped Me!")
    }
}
extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int ) -> Int {
        return names.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
              
        cell.textLabel?.text = names[indexPath.row]
        return cell
         
    }
}
