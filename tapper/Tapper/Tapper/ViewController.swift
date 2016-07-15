//
//  ViewController.swift
//  Tapper
//
//  Created by Stephan Zharkov on 7/1/16.
//  Copyright © 2016 Stephan Zharkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var curTaps = 0
//
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tabLbl: UILabel!
//
//    
    
    @IBAction func onCoinTapped(sender: UIButton!){
        curTaps += 1;
        updateLabels();
        
        if isGameOver() {
            restartGame();
        }
    }
    
    @IBAction func OnPlayBtnPressed(sender: UIButton){

        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
            logoImg.hidden = true;
            playBtn.hidden = true;
            howManyTapsTxt.hidden = true;
            
            tapBtn.hidden = false;
            tabLbl.hidden = false;
            
            maxTaps = Int(howManyTapsTxt.text!)!
            curTaps = 0;
            updateLabels()
        }
    }

    func updateLabels(){
        tabLbl.text = "\(curTaps) Taps"

    }
    
    func isGameOver() -> Bool {
        if (curTaps >= maxTaps){
            return true;
        }
        else
        {
            return false;
        }
    }
    
    func restartGame() {
        maxTaps = 0;
        howManyTapsTxt.text = "";
        logoImg.hidden = false;
        playBtn.hidden = false;
        howManyTapsTxt.hidden = false;
        
        tapBtn.hidden = true;
        tabLbl.hidden = true;
    }
    
}

