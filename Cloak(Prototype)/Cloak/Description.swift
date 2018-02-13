//
//  Description.swift
//  Cloak
//
//  Created by Student on 12/19/17.
//  Copyright © 2017 Solomon. All rights reserved.
//

import UIKit

class Description: UIViewController {
    @IBOutlet var characterImage: UIImageView! = UIImageView()
    @IBOutlet var characterName: UITextField! = UITextField()
    @IBOutlet var characterDescription: UITextView! = UITextView()
    @IBOutlet weak var background: UIView!
    @IBOutlet var CharacterTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveUnwind(_ sender: Any) {
        var characterTabBarTemp: CharacterTabBarViewController = self.tabBarController as! CharacterTabBarViewController
        characterTabBarTemp.saveUnwind()
        
        
    }
    
    //@IBAction func saveUnwind(_ sender: Any) {
        //SavedCharacter.prototypeChar.characterDescription = characterDescription.text
        //SavedCharacter.prototypeChar.characterName = characterName.text!
        //SavedCharacter.prototypeChar.characterImage = characterImage.image
        //Figure out how to unwind from here
        //print("Hey")
    //}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
