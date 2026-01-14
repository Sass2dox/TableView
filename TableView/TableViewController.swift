//
//  TableViewController.swift
//  TableView
//
//  Created by Sana Akhanova on 08.01.2026.
//

import UIKit
class TableViewController: UITableViewController {
    
    var arrayPersons = [Person(name: "Aly", surname: "Mosby", image: "anime", info:"Любит играть в настольные игры"),
                        Person(name: "Kelly", surname: "Stinson", image:"asian", info: "Играет на музыкальных инструментах"),
                        Person(name: "Lily", surname: "Aldrins", image: "flower", info: "Ухаживает за растениями"),
                        Person(name: "Gans", surname: "Landa", image: "Gans", info: "Фанат Тарантино"),
                        Person(name: "Juan", surname: "Karlos first", image: "Lana", info:"слушает Lana Del Ray")]
    

    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func addPerson(_ sender: Any) {
        arrayPersons.append(Person(name: "Username", surname: "Usersurname", image: "profile"))
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
            
            // Configure the cell...
            let label = cell.viewWithTag(1001) as! UILabel
            label.text = arrayPersons[indexPath.row].name
            
            let labelSurname = cell.viewWithTag(1002) as! UILabel
            labelSurname.text = arrayPersons[indexPath.row].surname
            
            let imageView = cell.viewWithTag(1003) as! UIImageView
            imageView.image = UIImage(named: arrayPersons[indexPath.row].image)
            return cell
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath)
        
        let label = cell.viewWithTag(1001) as! UILabel
        label.text = arrayPersons[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(1002) as! UILabel
        labelSurname.text = arrayPersons[indexPath.row].surname
        
        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image = UIImage(named: arrayPersons[indexPath.row].image)
        
        
return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 95
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "ViewController") as!
        ViewController
        vc.person = arrayPersons[indexPath.row]
        
        navigationController?.show(vc, sender: self)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    
    if editingStyle == .delete {
    // Delete the row from the data source

    arrayPersons.remove(at:indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .fade)
}
    
    else if editingStyle == .insert {
        
}
}


}
