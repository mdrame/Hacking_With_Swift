//
//  ViewController.swift
//  wordPlay
//
//  Created by Mohammed Drame on 11/6/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Collection  of buttons
    @IBOutlet var buttonsOutlet: [UIButton]!
    
    // Outlet
    @IBOutlet weak var tong: UIButton!
    @IBOutlet weak var herocain: UIButton!
    @IBOutlet weak var love: UIButton!
    @IBOutlet weak var setting: UIButton!
    
    var tongInitLocation: CGPoint!
    var herocainInitLocation: CGPoint!
    var loveInitLocation: CGPoint!
    var settingInitLocation: CGPoint!
    
    
    @IBOutlet var views: [UIView]!
    
    
    
    // Global Variable
    var switchButton: Bool = false
    
    
    func buttonslayoutStuff() {
        for buttons in buttonsOutlet{
            buttons.layer.cornerRadius = 15
        }
    }
    
    func viewslayoutStuff() {
           for views in views{
               views.layer.cornerRadius = 15
           }
       }
    
    func hideButtonBehindHomeButton() {
        for buttons in buttonsOutlet {
            buttons.center = love.center
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // set a;;
        
        tongInitLocation = tong.center
        herocainInitLocation = herocain.center
        loveInitLocation = love.center
        settingInitLocation = setting.center
        
        
        
        buttonslayoutStuff()
        viewslayoutStuff()
        hideButtonBehindHomeButton()
        
      
    
} // viewdidload ends here
    
    
    
    func setButtonProperties(unpress: UIColor, buttonPress: UIColor , button: UIButton, stage: Bool) {
        button.backgroundColor = stage ? buttonPress : unpress
    }
    
    
    func animate(buttonStage: Bool) {
       
        if buttonStage == true {
            UIView.animate(withDuration: 0.2) {
                self.tong.center = self.tongInitLocation
                self.herocain.center = self.herocainInitLocation
                self.setting.center = self.settingInitLocation
            } } else {
            UIView.animate(withDuration: 0.2) {
                self.hideButtonBehindHomeButton()
                
        }
    }
    }
        
    
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        switchButton.toggle() // the first time user hit the button represent on / pushupinside
        switch sender.tag {
        case 0:
            setButtonProperties(unpress: #colorLiteral(red: 0, green: 0.7132386565, blue: 0.7601952553, alpha: 1), buttonPress: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), button: sender, stage: switchButton)
        case 1:
            setButtonProperties(unpress: #colorLiteral(red: 0.5663121939, green: 0.139139235, blue: 0.704475522, alpha: 1), buttonPress: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), button: sender, stage: switchButton)
        case 2: // Home Button
            setButtonProperties(unpress: #colorLiteral(red: 0.1462306678, green: 0.1633906662, blue: 0.1777814627, alpha: 1), buttonPress: #colorLiteral(red: 0.04775587469, green: 0.04555403441, blue: 0.9970071912, alpha: 1), button: sender, stage: switchButton)
            animate(buttonStage: switchButton)
        case 3:
            setButtonProperties(unpress: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1), buttonPress: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), button: sender, stage: switchButton)
        default:
            print("Nothing")
        }
        
        
    }
    
   
    


    

    
   
    
}

