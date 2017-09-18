//
//  DefinitionViewController.swift
//  Emoji_Dictionary
//
//  Created by Marcus Jessnitz on 9/18/17.
//  Copyright © 2017 venor.net. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "😀" {
            emojiDefinition.text = "A friendly guy."
        }
        if emoji == "😎" {
            emojiDefinition.text = "A shaded guy."
        }
        if emoji == "😡" {
            emojiDefinition.text = "A not so friendly guy."
        }
        if emoji == "💩" {
            emojiDefinition.text = "A poo."
        }
        if emoji == "☠️" {
            emojiDefinition.text = "A pirate."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
