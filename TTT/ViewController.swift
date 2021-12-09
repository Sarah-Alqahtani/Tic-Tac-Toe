//
//  ViewController.swift
//  TTT
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {
    var Player=1
    var playingGame=true
    var stategame=[0,0,0,0,0,0,0,0,0]
    let winerArr=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    @IBOutlet weak var TTTlabel: UILabel!
    @IBOutlet weak var statuslabel: UILabel!
  
   
    
    @IBAction func actions(_ sender: AnyObject) {
        let bsender=sender as! UIButton
        if (stategame[sender.tag-1]==0 && playingGame==true){
            stategame[sender.tag-1]=Player
        if Player==1{
            bsender.backgroundColor=UIColor.red
            
            Player=2
        }else{
            bsender.backgroundColor=UIColor.blue
           
            Player=1
        }
        }
            
        for i in winerArr{
            if (stategame[i[0]]  != 0 && stategame[i[0]]==stategame[i[1]] && stategame[i[1]]==stategame[i[2]])
            {
                        
                 playingGame=false
                
            if stategame[i[0]]  ==  1
            {
                statuslabel.text="Red is winner!!"
            }else{
             
                statuslabel.text="Blue is winner!!"
                
            }
                
                statuslabel.isHidden=false
                reset.isHidden=false
            }
            
        }
        
        
    }
    
    @IBOutlet weak var reset: UIButton!
    @IBAction func reset(_ sender: AnyObject) {
        
        stategame=[0,0,0,0,0,0,0,0,0]
        playingGame=true
        Player=1
        reset.isHidden=true
        statuslabel.isHidden=true
        
        for i in 1...9
        {
           // let bsender=sender as! UIButton
            let btn=view.viewWithTag(i) as! UIButton
            btn.backgroundColor=UIColor.gray
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
}

