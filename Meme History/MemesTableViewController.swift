//
//  MemesTableViewController.swift
//  Memes
//
//  Created by Alvaro Bilbao La Vieja on 16/05/2018.
//  Copyright © 2018 Alvaro Bilbao La Vieja. All rights reserved.
//

import UIKit

class MemesTableViewController: UITableViewController {

    var memesArr = [MemeModel]()
    var selectedMeme : MemeModel?
    
    let meme1 = MemeModel(name:"why not?", year:"2012", description:"desc", img: "whyNot")
    let meme2 = MemeModel(name:"Im watchin you", year:"2012", description:"desc", img: "imwatchingyou")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memesArr = [meme1, meme2]

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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return memesArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeCellIdentifier", for: indexPath) as! MemeTableViewCell
        
        cell.nameLabel?.text = memesArr[indexPath.row].name
        cell.yearLabel?.text = memesArr[indexPath.row].year
        cell.memeImg?.image = UIImage(named: (memesArr[indexPath.row].img)!)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMeme = memesArr[indexPath.row]
        print("select happen", selectedMeme?.name)
        performSegue(withIdentifier: "showMemeDescription", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let memeDetailViewController = segue.destination as! MemeDescriptionController
        print(selectedMeme?.name)
        memeDetailViewController.meme = selectedMeme!
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

}
