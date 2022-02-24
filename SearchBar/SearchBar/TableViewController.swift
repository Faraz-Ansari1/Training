//
//  TableViewController.swift
//  SearchBar
//
//  Created by daffolapmac-82 on 23/02/22.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {

    let data = ["Lucifer","Daredevil","Thor","Ironman","FA","Spiderman"]
    var filteredData: [String]!
    
    @IBOutlet weak var searchbar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchbar.delegate = self
        filteredData = data

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = filteredData[indexPath.row]
                            return cell
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == ""
        {
            filteredData = data
        }
        else{
        for fruit in data
        {
            if fruit.lowercased().contains(searchText.lowercased())
            {
                filteredData.append(fruit)
            }
        }
            
        }
        self.tableView.reloadData()
    }

}
