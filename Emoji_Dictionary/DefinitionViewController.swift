//
//  DefinitionViewController.swift
//  Emoji_Dictionary
//
//  Created by Marcus Jessnitz on 9/18/17.
//  Copyright © 2017 venor.net. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {


    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
