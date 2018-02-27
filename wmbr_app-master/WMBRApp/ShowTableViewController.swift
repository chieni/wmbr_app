//
//  ShowTableViewController.swift
//  WMBRApp
//
//  Created by Brian Sennett on 2/18/18.
//  Copyright © 2018 WMBR. All rights reserved.
//

import UIKit

class ShowTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var shows = [Show]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load sample data
        loadSampleShows()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ShowTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
            as? ShowTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ShowTableViewCell.")
        }
        
        let show = shows[indexPath.row]
        
        cell.nameLabel.text = show.name
        cell.timeLabel.text = show.time
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Private Methods
    
    private func loadSampleShows() {
        
        guard let show1 = Show(name: "Breakfast of Champions", time: "8:00 AM") else {
            fatalError("Unable to instantiate show1")
        }
        
        guard let show2 = Show(name: "Late Risers Club", time: "10:00 AM") else {
            fatalError("Unable to instantiate show2")
        }
        
        guard let show3 = Show(name: "Lost and Found", time: "12:00 PM") else {
            fatalError("Unable to instantiate show3")
            
        }
        
        shows += [show1, show2, show3]
        
    }
}
