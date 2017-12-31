//
//  ViewController.swift
//  Emoji_Dictionary
//
//  Created by Marcus Jessnitz on 9/18/17.
//  Copyright © 2017 venor.net. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Main_TableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Main_TableView.dataSource = self
        Main_TableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley happy face."
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "A shady dude."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😡"
        emoji3.birthYear = 2008
        emoji3.category = "Smiley"
        emoji3.definition = "An angry face."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💩"
        emoji4.birthYear = 2007
        emoji4.category = "Poo"
        emoji4.definition = "A smiling poo."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "☠️"
        emoji5.birthYear = 2006
        emoji5.category = "Death"
        emoji5.definition = "A Skull."
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }

}

