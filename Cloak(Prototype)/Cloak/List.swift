//
//  List.swift
//  Cloak
//
//  Created by Student on 12/19/17.
//  Copyright © 2017 Solomon. All rights reserved.
//

import UIKit

class List: UIViewController {
    @IBOutlet weak var background: UIView!
    var prototypeCharacter = Character()
    var characterViewController: CharacterTabBarViewController!
    
    @IBAction func PrototypeButtonDidPress(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        self.characterViewController = storyBoard.instantiateViewController(withIdentifier: "CharacterTabBar") as! CharacterTabBarViewController
        self.characterViewController.char = self.prototypeCharacter
        UIView.animate(withDuration: 0.5) {
            self.background.backgroundColor = UIColor.init(red: 165.0/255.0, green: 184.0/255.0, blue: 206.0/255.0, alpha: 1.0)
        }
        self.present(characterViewController, animated:true, completion:nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.background.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        prototypeCharacter.characterDescription = "This is a Prototype Character, you can change the description, name, powers, and stat."
        prototypeCharacter.characterImage = UIImage(named: "download")
        prototypeCharacter.characterName = "Protoman"
        prototypeCharacter.powersAndSkills = "This Characters Power is to be a ProtoType, he does a great job at it, he's very powerful, can't you tell?"
        prototypeCharacter.someStat = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myUnwindActionListView(unwindSegue: UIStoryboardSegue) {
        //description
        prototypeCharacter.characterDescription = characterViewController.descriptionVC.characterDescription.text
        prototypeCharacter.characterName = characterViewController.descriptionVC.characterName.text!
        prototypeCharacter.characterImage = characterViewController.descriptionVC.characterImage.image
        //powers
        prototypeCharacter.powersAndSkills = characterViewController.powerVC.characterPowers.text!
        //stats
        prototypeCharacter.someStat = characterViewController.statVC.characterStat.text!
        UIView.animate(withDuration: 0.5) {
            self.background.backgroundColor = UIColor.white
        }
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
