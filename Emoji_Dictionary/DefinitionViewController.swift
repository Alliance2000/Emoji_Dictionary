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
    
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
