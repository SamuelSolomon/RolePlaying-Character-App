//
//  CharacterTabBarViewController.swift
//  Cloak
//
//  Created by Student on 1/31/18.
//  Copyright © 2018 Solomon. All rights reserved.
//

import UIKit

class CharacterTabBarViewController: UITabBarController {
    var char: Character!
    var descriptionVC: Description!
    var powerVC: Powers!
    var statVC: Stats!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        descriptionVC = storyBoard.instantiateViewController(withIdentifier: "description") as! Description
        descriptionVC.tabBarItem = UITabBarItem(title: "description", image: UIImage(named: "DescriptionLogo")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal),  tag: 0)
        
        powerVC = storyBoard.instantiateViewController(withIdentifier: "powers") as! Powers
        powerVC.tabBarItem = UITabBarItem(title: "powers", image: UIImage(named: "PowersLogo")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), tag: 1)
        
        statVC = storyBoard.instantiateViewController(withIdentifier: "stats") as! Stats
        statVC.tabBarItem = UITabBarItem(title: "stats", image: UIImage(named: "StatsLogo")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), tag: 2)
        
        viewControllers = [descriptionVC,powerVC,statVC]
        
        // Do any additional setup after loading the view.
        
        descriptionVC.characterDescription.text = self.char.characterDescription
        descriptionVC.characterName.text = self.char.characterName
        descriptionVC.characterImage.image = self.char.characterImage
        powerVC.characterPowersString = self.char.powersAndSkills
        statVC.characterStatString = self.char.someStat
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveUnwind() {
        self .performSegue(withIdentifier: "myUnwindActionListViewSave", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
