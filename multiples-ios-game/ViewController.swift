//
//  ViewController.swift
//  multiples-ios-game
//
//  Created by Ishan Shams on 2/5/16.
//  Copyright © 2016 Ishan Shams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var chosenNum : Int = 0
    var total : Int = 0
    
    //outlets
    @IBOutlet weak var logo : UIImageView!
    @IBOutlet weak var playBtn : UIButton!
    @IBOutlet weak var textFld : UITextField!
    
    @IBOutlet weak var textLbl : UILabel!
    @IBOutlet weak var addBtn : UIButton!
    
    @IBAction func playButton(sender : UIButton!) {
        if textFld.text != nil && textFld.text != "" {
            logo.hidden = true
            textFld.hidden = true
            playBtn.hidden = true
            
            addBtn.hidden = false
            textLbl.hidden = false
            
            chosenNum = Int(textFld.text!)!
        }
    }
    
    @IBAction func addButton(sender : UIButton!) {
        
        
        textLbl.text = "\(total) + \(chosenNum) = \(total+chosenNum)"
        total += chosenNum
        
        if total > 100 {
            restartGame()
        }
    }
    
    func restartGame() {
        chosenNum = 0
        total = 0
        textLbl.text = "Press ADD to add!"
        logo.hidden = false
        textFld.hidden = false
        playBtn.hidden = false
        
        addBtn.hidden = true
        textLbl.hidden = true
        
    }
    
    
}

