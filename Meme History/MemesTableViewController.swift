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
    
    let meme1 = MemeModel(name:"Expand your brain", year:"2017", description:"Expanding Brain, also known as Galaxy Brain, is a multi-panel exploitable image series comparing the brain size of a person relative to other variables. Though the expanding brain is usually implied to showcase intellectual superiority over various objects, it is more often used in an ironic sense to imply the opposite, where objects of derision are implied to be of higher standard than objects that are usually highly regarded.", img: "brain")
    
    let meme2 = MemeModel(name:"Distracted Boyfriend", year:"2017", description:"Distracted Boyfriend, also known as Man Looking at Other Woman, is an object labeling stock photo series in which a man looks at the backside of a woman walking by while another woman, presumably his romantic partner, looks on disapprovingly.", img: "cheatMeme")
    
    let meme3 = MemeModel(name:"Pedobear", year:"2003", description:"Pedobear is a cartoon mascot that became a well-known icon through its usage on 4chan to signal moderators and other users that illegal pornographic content had been posted. Due to the widespread nature of its application, Pedobear has been often misinterpreted as a symbol of pedophilia and lolita complex, especially in the news media and law enforcement agencies. \n\n The character known today as Pedobear used to be simply known as Kumar or Kuma (bear) on the Japanese textboard 2channel.", img: "pedobear")
    
    let meme4 = MemeModel(name: "Roll Safe", year: "2016", description: "Roll Safe is an image macro serious featuring a screenshot of actor Kayode Ewumi grinning and pointing to his temple while portraying the character Reece Simpson (a.k.a. Roll Safe) in the web series Hood Documentary. The image is often captioned with various jokes mocking poor decision making and failures in critical thinking.", img: "goodIdea")
    
    let meme5 = MemeModel(name: "It's A Trap!", year: "2000", description: "It's A Trap! is a catchphrase that is often used as a reaction image to photos of transsexuals and crossdressers (often referred to as traps), or people who appear sexually ambiguous. It usually means that the person in question has male reproductive organs, regardless of their appearance. Though less frequently, the phrase can be also used as a warning of any potential danger.", img: "itsATrap")
    
    let meme6 = MemeModel(name: "komo lo zupo", year: "2014", description: "This meme is mainly used in spanish speaking countries, mainly in Mexico, it became popular around year 2014-2015, and is a screenshot of a popular japanese puppet show called \"Kids in development\"that began airing on year 1959 until 1987. This specific puppet is called Pedro. The meme express the sarchasm when somebody expresses something obvious for everyone else. It is also used when someone states the truth intentions behind someones words", img: "komolozupo")
    
    let meme7 = MemeModel(name: "Savage Patrick", year: "2018", description: "Savage Patrick (sometimes referred to as Evil Patrick or Angry Patrick) refers to a still image of Patrick Star from Spongebob Squarepants looking as though he's in the midst of a maniacally evil chuckle.", img: "savagePatrick")
    
    let meme8 = MemeModel(name: "Adios Vaquero", year: "2016", description: "Is a meme based on the famous Disney movie \"Toy Story\", it appeared in late 2016, it usually denotes the loss of a friend bacause of an accident or any event that lead your friend to not hangout with you as often as you used to.", img: "woody")
    
    let meme9 = MemeModel(name: "Yoda head", year: "2004", description: "Yoda head is part of the second wave of memes from the internet, it is an image denoting any phrase as if it was said by Yoda", img: "yoda")
    
    let meme10 = MemeModel(name: "YUGIOH Cards", year: "2015", description: "The YUGIOH card memes are all the different memes which are used inside the scope of a YUGIOH card, denoting on the effect or description field of the card a funny phrase, it is mainly used for finishing internet fights with a random effect of a card, or to \"ward\" when an internet thread has something that interest you, which usually are porn related topics", img: "yugioh")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memesArr = [meme1, meme2, meme3, meme4, meme5]

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
        performSegue(withIdentifier: "showMemeDescription", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let memeDetailViewController = segue.destination as! MemeDescriptionController
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
